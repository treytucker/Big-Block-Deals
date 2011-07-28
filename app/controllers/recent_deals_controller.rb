class RecentDealsController < ApplicationController
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