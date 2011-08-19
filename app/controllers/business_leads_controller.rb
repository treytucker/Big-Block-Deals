class BusinessLeadsController < ApplicationController
  def index
    if params[:business_inquiries]
      @lead = BusinessLead.new(params[:business_inquiries])
      if @lead.valid?
        @lead.save
        redirect_to root_path, :notice => "Thank You! We will contact your soon."
      else
        redirect_to for_businesses_path, :notice => "Not valid..."
      end
    else
      redirect_to for_businesses_path, :notice => "nothing submitted"
    end
  end
end