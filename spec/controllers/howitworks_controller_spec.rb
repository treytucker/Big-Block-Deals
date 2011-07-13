require 'spec_helper'

describe HowitworksController do

  describe "GET 'consumer'" do
    it "should be successful" do
      get 'consumer'
      response.should be_success
    end
  end

  describe "GET 'business'" do
    it "should be successful" do
      get 'business'
      response.should be_success
    end
  end

end
