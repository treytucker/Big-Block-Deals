class ForBusinessesController < ApplicationController
    def index
      @content = ForBusiness.last
    end

    def edit
      @content = ForBusiness.new
    end

    def update
      @content = ForBusiness.new(params[:for_business])
      if @content.valid?
        @content.save
        redirect_to :for_businesses
      else
        render :edit 
      end
    end
  end
