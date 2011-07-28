class ForBusinessesController < ApplicationController
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
>>>>>>> finishing_out_the_routes
