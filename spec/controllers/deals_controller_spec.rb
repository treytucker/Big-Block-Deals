require 'spec_helper'

describe DealsController do

  describe "GET 'current'" do
    it "should be successful" do
      get 'current'
      response.should be_success
    end
  end

  describe "GET 'recent'" do
    it "should be successful" do
      get 'recent'
      response.should be_success
    end
  end

end
