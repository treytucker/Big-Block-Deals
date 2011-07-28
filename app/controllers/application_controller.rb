class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  
    def administration
      unless session[:your_the_bomb_dot_com] == true
        redirect_to root_path
      end
    end
end
