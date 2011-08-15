=begin
  FIXME Shows flash notice on redirect
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
    @catagory = Catagory.find(params[:id])
    if @catagory.good_reads.count == 0
      if @catagory.destroy
        redirect_to catagories_path, :notice => "Catagory '#{@catagory.name}' Deleted."
      else
        render catagories_path, :notice => "The catagory was not deleted..."
      end
    else
      a = []
      @good_reads = @catagory.good_reads.each do |f|
        a.concat(["#{f.title}"])
      end
      flash[:notice] = "The catagory was not deleted...Please move #{@good_reads.to_sentence} to a new catagory."
      redirect_to catagories_path
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