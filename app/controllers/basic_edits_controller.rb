=begin
  TODO Add revision functionality.
  TODO Add login stuff
=end
class BasicEditsController < ApplicationController

# BASIC_CONTROLLERS is defined in #{rails_root}/config/initializers/constants.rb

  BASIC_CONTROLLERS.each do |f|
    create = "#{f.first}_create" # Defines the create method name
    edit = f.first # Defines the edit method name
    models = f.last[:model] # used for refactoring the models
    url = f.last[:url].to_sym # Used for redirections

    define_method(edit) {
      @content = ActiveRecord.const_get(models).last
      @title = "Edit #{f.last[:title]} Page"
    }

    define_method(create) {
        @content = ActiveRecord.const_get(models).new(params[url])
        if @content.valid?
          @content.save
          redirect_to url
        else
          render edit.to_sym
        end
    }
  end
end