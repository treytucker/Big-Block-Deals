class BusinessLeadMailer < ActionMailer::Base
  default :from => "ellis.andy@gmail.com"
  
  def business_contact(contact)
     @contact = contact
     @url  = "http://localhost:3000/admin/login"
     mail(:to => "andrew@andrewryanellis.com",
          :subject => "New Business Contact")
   end
   def gmail_message
     mail(:to => "andrew.ellis@localhost", :subject => "Registered")
   end
  
end
