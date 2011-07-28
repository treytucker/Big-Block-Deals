class RecentDealsController < ApplicationController
<<<<<<< HEAD
  def index
    @content = AboutUs.last
  end

  def edit
    @content = AboutUs.last
  end

  def update
    @content = AboutUs.new(params[:about_us])
    if @content.valid?
      @content.save
      redirect_to :about_uses
    else
      render :edit 
    end
  end
end
=======
    def index
      @content = RecentDeal.last
    end

    def edit
      @content = RecentDeal.last
    end

    def update
      @content = RecentDeal.new(params[:recent_deal])
      if @content.valid?
        @content.save
        redirect_to :recent_deal
      else
        render :edit 
      end
    end
  end
>>>>>>> finishing_out_the_routes
