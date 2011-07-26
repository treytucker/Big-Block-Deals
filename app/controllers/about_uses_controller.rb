=begin
  TODO Needs to add in revisions functionality
=end

class AboutUsesController < ApplicationController
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