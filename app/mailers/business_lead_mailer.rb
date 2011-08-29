class BusinessLeadMailer < ActionMailer::Base
  default :from => "ellis.andy@gmail.com"
# TODO Configure for production server.  
  def business_contact(contact)
     @contact = contact
     @url  = "http://localhost:3000/admin/login"
     mail(:to => "andrew@andrewryanellis.com",
          :subject => "New Business Contact")
   end
  
end
