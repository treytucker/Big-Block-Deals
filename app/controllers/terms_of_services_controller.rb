class TermsOfServicesController < ApplicationController
  def index
    @content = TermsOfService.last
  end

  def edit
    @content = TermsOfService.last
  end

  def update
    @content = TermsOfService.new(params[:terms_of_service])
    if @content.valid?
      @content.save
      redirect_to :terms_of_services
    else
      render :edit 
    end
  end
end