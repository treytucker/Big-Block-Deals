=begin
  TODO Add paginaion
  TODO Add errors to views
  TODO Add in login stuffes
  TODO Add catagory section
  TODO Build Side widget - Blogs by Date
  TODO Build Side widget - Blogs by Catagory
  TODO Add Images via Paper clip
=end

class GoodReadsController < ApplicationController
  def index
    @posts = GoodRead.last(7)
    @title = "Good Reads"
    @catagories = Catagory.all
  end

  def show
    @post = GoodRead.find(params[:id])
    @title = "Good Read | #{@post.created_at.to_s(:good_reads_title)}"
  end
  
  def show_catagories
    @post = GoodRead.where("? = catagory_id", params[:id])
  end
  
  def new
    @post = GoodRead.new
    @title = "Good Read | New"
  end

  def create
    @post = GoodRead.new(params[:good_read])
    if @post.valid?
      @post.save
      redirect_to :good_reads
    else
      render :new
    end
  end

  def edit
    @post = GoodRead.find(params[:id])
    @title = "Good Read | Edit #{@post.created_at.to_s(:good_reads_title)}"
  end

  def update
    @post = GoodRead.find(params[:id])
    if @post.update_attributes(params[:good_read])
      redirect_to(@post, :notice => "Update Successful")
    else
      render :edit
    end
  end
  
  def destroy
    @post = GoodRead.find(params[:id]).delete
    redirect_to :good_reads, :notice => "Post Deleted"
  end

end
