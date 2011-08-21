class BusinessLeadsController < ApplicationController
  def index
    if params[:business_inquiries]
      @lead = BusinessLead.new(params[:business_inquiries])
      if @lead.valid?
        @lead.save
        BusinessLeadMailer.business_contact(@lead).deliver 
        redirect_to root_path, :notice => "Thank You! We will contact you soon."
      else
        @bc = BASIC_CONTROLLERS[:for_businesses]
        @content = ActiveRecord.const_get(@bc[:model]).last
        @layout = @bc[:layout]
        @title = @bc[:title]
        render "basics/for_businesses"
      end
    else
      redirect_to for_businesses_path, :notice => "nothing submitted"
    end
  end
end