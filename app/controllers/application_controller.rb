class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  
    def bomb_dot_com
      unless session[:admin_id]
        redirect_to root_path
      end
    end
end
