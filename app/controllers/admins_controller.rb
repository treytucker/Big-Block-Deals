=begin
  TODO Add in super user!
=end

class AdminsController < ApplicationController
  before_filter :bomb_dot_com
  def new
    @title = "Create a new Administrator"
    @admin = Admin.new
  end
  
  def create
    @admin = Admin.new( params[:admin] )
    if @admin.valid?
      @admin.save
      redirect_to admins_path
    else
      render "new"
    end
    
  end
  
  def index
    @title = "Administrators"
    @admins = Admin.all(:select => ["email", "id"])
  end
  
  def edit
    @admin = Admin.find(params[:id])
  end
  
  def update
  @admin = Admin.find(params[:id])
    if @admin.update_attributes(params[:admin])
      redirect_to admins_path, :notice => "Password Changed"
    end
  end
  
  def destroy
    if Admin.count == 1
      redirect_to admins_path, :notice => "You are the last Admin! You will be locked out."
    else
      if admin = Admin.find(params[:id])
        if params[:id] == session[:admin_id]
          redirect_to admins_path, :notice => "You can't delete yourself silly..."
        else
          admin.destroy
          redirect_to admins_path, :notice => "#{admin.email} has been removed from the admins"
        end
      else
        redirect_to admins_path, :notice => "There was a problem"
      end
    end
  end
  
end
