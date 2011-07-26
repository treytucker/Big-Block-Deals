class HowItWorksBusinessesController < ApplicationController
    def index
      @content = HowItWorksBusiness.last
    end

    def edit
      @content = HowItWorksBusiness.last
    end

    def update
      @content = HowItWorksBusiness.new(params[:how_it_works_business])
      if @content.valid?
        @content.save
        redirect_to :how_it_works_businesses
      else
        render :edit 
      end
    end
  end
