=begin
  TODO Add paginaion
  TODO Add errors to views
  TODO Add in login stuffes
  TODO Add catagory section
  TODO Build Side widget - Blogs by Date
  TODO Build Side widget - Blogs by Catagory
=end

class GoodReadsController < ApplicationController
  def index
    @num = 12
    @posts = GoodRead.all(:limit => @num)
    @title = "Good Reads"
    @catagories = Catagory.all
    @dates = GoodRead.all( :select => "created_at", :order => "created_at" )
    @layout = "three-fourths"
  end

  def show
    @post = GoodRead.find(params[:id])
    @title = "Good Read | #{@post.created_at.to_s(:good_reads_title)}"
  end
  
  def show_catagories
    @catagory = Catagory.where("? = name", params[:id])
    if @catagory.empty?
      redirect_to good_reads_path, :notice => "There is no catagory named #{params[:id]}"
    else
      @posts = GoodRead.where("? = catagory_id", @catagory_id)
    end
  end
  
  # TODO Add pagination
  def show_dates
    if params[:year]
      if params[:month]
        @month = "01 #{params[:month]} #{params[:year]}".to_date
        @posts = GoodRead.all(:conditions => ["created_at >= ? AND created_at <= ?", @month.at_beginning_of_month, @month.at_end_of_month])
        render :show_catagories
      else
        @year = "01 Jan #{params[:year]}".to_date
        @posts = GoodRead.all(:conditions => ["created_at >= ? AND created_at <= ?", @year.at_beginning_of_year, @year.at_end_of_year])
        render :show_catagories
    end
    end
  end
  
  def new
    @post = GoodRead.new
    @title = "Good Read | New"
    @catagories = Catagory.list_names
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
    @post = GoodRead.find(params[:id])
    @post.destroy
    redirect_to :good_reads, :notice => "Post Deleted"
  end

end
