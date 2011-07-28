class PrivacyPoliciesController < ApplicationController
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
      @content = PrivacyPolicy.last
    end

    def edit
      @content = PrivacyPolicy.last
    end

    def update
      @content = PrivacyPolicy.new(params[:privacy_policy])
      if @content.valid?
        @content.save
        redirect_to :privacy_policy
      else
        render :edit 
      end
    end
  end
>>>>>>> finishing_out_the_routes
