class SessionsController < ApplicationController
  before_filter :bomb_dot_com, :except => [:new, :create]
  
  def new
  end

  def create
    admin = Admin.authenticate(params[:email].downcase, params[:password])
    if admin
      session[:admin_id] = admin.id
      redirect_to root_url, :notice => "Logged In"
    else
      flash.now.alert = "Invalid authentication credentials"
      render "new"
    end
  end
  
  def destroy
    session[:admin_id] = nil
    redirect_to root_path
  end
end