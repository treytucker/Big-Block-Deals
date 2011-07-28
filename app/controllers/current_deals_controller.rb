class CurrentDealsController < ApplicationController
    def index
      @content = CurrentDeal.last
    end

    def edit
      @content = CurrentDeal.last
    end

    def update
      @content = CurrentDeal.new(params[:current_deal])
      if @content.valid?
        @content.save
        redirect_to :current_deals
      else
        render :edit 
      end
    end
  end