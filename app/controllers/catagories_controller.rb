=begin
  TODO Test when there are no Catagories.
=end

class CatagoriesController < ApplicationController
  before_filter :bomb_dot_com
  
  def index
    @layout = "blog"
    @catagories = Catagory.all
    @title = "Catagories"
    @catagories = gather_thine_catagories
    @dates = gather_thine_dates
  end

  def edit
    @layout = "blog"
    @catagory = Catagory.find(params[:id])
    @title = "Edit Catagory"
    @catagories = gather_thine_catagories
    @dates = gather_thine_dates
  end

  def new
    @layout = "blog"
    @catagory = Catagory.new
    @title = "new Catagory"
    @catagories = gather_thine_catagories
    @dates = gather_thine_dates
  end

  def update
    @layout = "blog"
    @catagory = Catagory.find(params[:id])
    if @catagory.update_attributes(params[:catagory])
      redirect_to( catagories_path, :notice => "Catagory Updated" )
    else
      render :edit, :notice => "Error"
    end
  end

  def destroy
    @layout = "blog"
    @catagory = Catagory.find(params[:id])
    # Checks if there are any good_reads associated with the catagory.
    # FIXME Flash message needs to list all the blog entries in that catagory
    if @catagory.good_reads.count == 0
      if @catagory.destroy
        redirect_to catagories_path, :notice => "Catagory '#{@catagory.name}' Deleted."
      else
        render catagories_path, :notice => "Well that was weird, #{@catagory.name} was not deleted..."
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
    @layout = "blog"
    @catagory = Catagory.new(params[:catagory])
    if @catagory.valid?
      @catagory.save
      redirect_to catagories_path, :notice => "Catagory created"
    else
      render :edit
    end
  end
end
