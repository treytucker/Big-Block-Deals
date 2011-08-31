class BusinessLeadMailer < ActionMailer::Base
# FIXME Change the sending address
  default :from => "ellis.andy@gmail.com"
# FIXME Configure for production server. 
# TODO Style out the message for paul 
  def business_contact(contact)
     @contact = contact
     @url  = "http://localhost:3000/admin/login"
     mail(:to => "andrew@andrewryanellis.com",
          :subject => "New Business Contact")
   end
  
end
