class PrivacyPoliciesController < ApplicationController
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