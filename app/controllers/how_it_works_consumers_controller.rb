class HowItWorksConsumersController < ApplicationController
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
      @content = HowItWorksConsumer.last
    end

    def edit
      @content = HowItWorksConsumer.last
    end

    def update
      @content = HowItWorksConsumer.new(params[:how_it_works_consumer])
      if @content.valid?
        @content.save
        redirect_to :how_it_works_consumers
      else
        render :edit 
      end
    end
  end
>>>>>>> finishing_out_the_routes
