class BasicEditsController < ApplicationController
  uses_tiny_mce
  before_filter :bomb_dot_com
  
# BASIC_CONTROLLERS is defined in #{rails_root}/config/initializers/constants.rb

  BASIC_CONTROLLERS.each do |f|
    # This sets up all the needed variables for use later in the script
    
    create = "#{f.first}_create" # Defines the create method name
    edit = f.first # Defines the edit method name
    models = f.last[:model] # used for refactoring the models
    url = f.last[:url].to_sym # Used for redirections
    form = f.last[:form]
    @page = f.last[:form]
    # This dynamically creates all the actions needed to edit/create new content based on if there is content in the DB or not.
    define_method(edit) {
      @layout = f.last[:layout]
      if @content = ActiveRecord.const_get(models).last
        @title = "Edit #{f.last[:title]} Page"
      else
        @content = ActiveRecord.const_get(models).new
        @title = "Edit #{f.last[:title]} Page"
      end
    }

# This dynamically creates the action for each of the constants in constants.rb file
# It Pulls down the last record and updates it. 
# If there isn't a record, it creates a new record. 

    define_method(create) {
      @layout = f.last[:layout]
      if @content = ActiveRecord.const_get(models).last
        if @content.update_attributes(params[form])
          redirect_to url
        else
          render edit.to_sym
        end
      else 
        @content = ActiveRecord.const_get(models).new(params[form])
        if @content.valid?
          @content.save
          redirect_to url
        else
          render edit.to_sym
        end
      end
    }
  end
end