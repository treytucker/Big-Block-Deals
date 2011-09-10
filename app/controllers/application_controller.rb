class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :the_method_that_came_before, :grab_the_widgets
  
  private
    
    def grab_the_widgets
      @widgets = Widget.all
    end
    
    def the_method_that_came_before
      @active_quotes = Quote.all_active.shuffle!
    end
    
    def bomb_dot_com
      unless session[:admin_id]
        redirect_to root_path
      end
    end
end
