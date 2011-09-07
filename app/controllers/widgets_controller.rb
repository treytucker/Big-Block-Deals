class WidgetsController < ApplicationController
  
  uses_tiny_mce
  
  def index
    @widgets = Widget.all
  end
  
  def new
    @widget = Widget.new
  end
  
  def create
    @widget = Widget.new(params[:widget])
    if @widget.valid?
      @widget.save
      redirect_to widgets_path, :notice => "Your widget was saved." # Laudie frickin dah!"
    else  
      render "new"
    end
  end
  
  def show
    @widget = Widget.find(params[:id])
  end
  
  def edit
    @widget = Widget.find(params[:id])
  end
  
  def update
    @widget = Widget.find(params[:id])
    if @widget.update_attributes(params[:widget])
      if params[:widget][:image_delete] == true
        @widget.wimage = nil
        @widget.save
      end
      redirect_to widgets_path
    else
      render "edit"
    end
  end
  

  
  
  def destroy
    @widget = Widget.find(params[:id])
    if @widget.destroy
      redirect_to widget_path
    end
  end
  
end
