class BusinessContact < ActionMailer::Base
  default :from => "from@example.com"
  
  def notification_email(contact)
    @contact = business_contact
    @url = contact.website
    mail( :to => 'trey@treytucker.com',
          :from => contact.first_name contact.last_name,
          :subject => contact.first_name contact.last_name 'contacted you about their business'
          )
    format.html { render 'bus_contact_notifier'}
    format.text { render :text => 'The actual text'}
  end
    
end
