class WidgetsController < ApplicationController
  
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
      redirect_to widgets_path, :notice => "Your widget was saved. Laudie frickin dah!"
    else  
      render "new"
    end
  end
  
  def show
    
  end
  
  def edit
    @widget = Widget.edit(params[:widget])
  end
  
end
