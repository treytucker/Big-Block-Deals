class HowItWorksConsumersController < ApplicationController
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
