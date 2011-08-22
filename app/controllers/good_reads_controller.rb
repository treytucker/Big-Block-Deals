=begin
  TODO Add paginaion
  TODO Add errors to views
  TODO Test when there is no Good Reads
=end

class GoodReadsController < ApplicationController
  before_filter :bomb_dot_com, :except => [:index, :show, :show_catagories, :show_dates]
  
  uses_tiny_mce
  
  def index
    @num = 12
    @posts = GoodRead.order("created_at DESC").page(params[:page]).per(5)
    @title = "Good Reads"
    @page = "good_reads"
    @catagories = gather_thine_catagories
    @dates = gather_thine_dates
    @layout = "blog"
  end

  def show
    @post = GoodRead.find(params[:id])
    @title = "Good Read | #{@post.created_at.to_s(:good_reads_title)}"
  end
  
  def show_catagories
    @catagory = Catagory.find_by_name(params[:id])
    if @catagory.good_reads.nil?
      redirect_to good_reads_path, :notice => "There is no catagory named #{params[:id]}"
    else
      @posts = @catagory.good_reads
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
    @catagories = gather_thine_catagories
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

  private
    def gather_thine_dates
      @dates = GoodRead.all( :select => "created_at", :order => "created_at" )
    end
    
    def gather_thine_catagories
      @catagories = Catagory.find(:all, :order => "name")
    end
end
