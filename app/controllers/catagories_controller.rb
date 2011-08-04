=begin
  FIXME When a catagory is deleted, needs to check if any good reads are on that catagory
=end

class CatagoriesController < ApplicationController
  def index
    @catagories = Catagory.all
    @title = "Catagories"
  end

  def edit
    @catagory = Catagory.find(params[:id])
    @title = "Edit Catagory"
  end

  def new
    @catagory = Catagory.new
    @title = "new Catagory"
  end

  def update
    @catagory = Catagory.find(params[:id])
    if @catagory.update_attributes(params[:catagory])
      redirect_to( catagories_path, :notice => "Catagory Updated" )
    else
      render :edit, :notice => "Error"
    end
  end

  def destroy
    if @catagory = Catagory.find(params[:id]).delete
      redirect_to catagories_path, :notice => "Catagory '#{@catagory.name}' Deleted."
    else
      render catagories_path, :notice => "The catagory was not deleted..."
    end
  end

  def create
    @catagory = Catagory.new(params[:catagory])
    if @catagory.valid?
      @catagory.save
      redirect_to catagories_path, :notice => "Catagory created"
    else
      render :edit
    end
  end
end
