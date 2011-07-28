class HowItWorksBusinessesController < ApplicationController
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
>>>>>>> finishing_out_the_routes
