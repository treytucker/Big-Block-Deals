class HowitworksController < ApplicationController
  def consumer
    @quote = Quote.find(1)
  end

  def business
  end

end
