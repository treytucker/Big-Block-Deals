class GoodReadsController < ApplicationController
  before_filter :bomb_dot_com, :except => [:index, :show, :show_categories, :show_dates]
  uses_tiny_mce(:options => {
    :theme => 'advanced',
    :theme_advanced_buttons2 => %w{spellchecker},
    :plugins => %w{contextmenu paste spellchecker},
    :spellchecker_languages => "+English=en",
  })
  
  def index
    @posts = GoodRead.order("created_at DESC").page(params[:page]).per(5)
    @title = "Good Reads"
    @page = "good_read"
    @categories = gather_thine_categories
    @dates = gather_thine_dates
    @layout = "blog"
    @widgets = Widget.where("? = good_read_active", true).order(:good_read_order)
  end

  def show
    @layout = "blog"
    @post = GoodRead.find(params[:id])
    @title = "Good Read | #{@post.created_at.to_s(:good_reads_title)}"
    @widgets = Widget.all
    @page = "good_read"
  end

  def show_categories
    @layout = "blog"
    @category = Category.find_by_name(params[:id])
    @page = "good_read"
    if @category.good_reads.nil?
      redirect_to good_reads_path, :notice => "There is no catagory named #{params[:id]}"
    else
      @posts = @category.good_reads
    end
  end
  
  # FIXME Move to the model(Needs refactoring)
  def show_dates
    @layout = "blog"
    if params[:year]
      if params[:month]
        @month = "01 #{params[:month]} #{params[:year]}".to_date
        @posts = GoodRead.all(:conditions => ["created_at >= ? AND created_at <= ?", @month.at_beginning_of_month, @month.at_end_of_month])
        render :show_categories
      else
        @year = "01 Jan #{params[:year]}".to_date
        @posts = GoodRead.all(:conditions => ["created_at >= ? AND created_at <= ?", @year.at_beginning_of_year, @year.at_end_of_year])
        render :show_categories
      end
    end
  end
  
  def new
    @layout = "blog"
    @post = GoodRead.new
    @title = "Good Read | New"
    @categories = Category.list_names
  end

  def create
    @layout = "blog"
    @post = GoodRead.new(params[:good_read])
    if @post.valid?
      @post.save
      redirect_to good_reads_path
    else
      render :new
    end
  end

  def edit
    @layout = "blog"
    @post = GoodRead.find(params[:id])
    @title = "Good Read | Edit #{@post.created_at.to_s(:good_reads_title)}"
    @categories = gather_thine_categories
  end

  def update
    @layout = "blog"
    @post = GoodRead.find(params[:id])
    if @post.update_attributes(params[:good_read])
      
      redirect_to(@post, :notice => "Update Successful")
    else
      render :edit
    end
  end
  
  def destroy
    @layout = "blog"
    @post = GoodRead.find(params[:id])
    @post.destroy
    redirect_to :good_reads, :notice => "Post Deleted"
  end

  private
    def gather_thine_dates
      @dates = GoodRead.all( :select => "created_at", :order => "created_at" )
    end
    
    def gather_thine_categories
      @categories = Category.find(:all, :order => "name")
    end
end
