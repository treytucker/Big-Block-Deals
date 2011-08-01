class BasicEditsController < ApplicationController

# BASIC_CONTROLLERS is defined in #{rails_root}/config/initializers/constants.rb

  BASIC_CONTROLLERS.each do |f|
    create = "#{f.first}_create"
    edit = f.first
    models = f.last[:model]
    url = f.last[:url].to_sym
    
    define_method(edit) {
      @content = ActiveRecord.const_get(models).last
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