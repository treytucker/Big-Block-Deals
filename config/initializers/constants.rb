#This is a list of all the controllers used on teh static pages.

BASIC_CONTROLLERS = { 
  :about_uses => {:model => "AboutUs", :url => 'about_us'}, 
  :contacts => {:model => "Contact", :url => :contact}, 
  :current_deals => {:model => "CurrentDeal", :url => :current_deal}, 
  :for_businesses => {:model => "ForBusiness", :url => :for_business}, 
  :how_it_works_businesses => {:model => "HowItWorksBusiness", :url => :how_it_works_business}, 
  :how_it_works_consumers => {:model => "HowItWorksConsumer", :url => :how_it_works_consumer}, 
  :privacy_policies => {:model => "PrivacyPolicy", :url => :privacy_policy}, 
  :recent_deals => {:model => "RecentDeal", :url => :recent_deal},
  :terms_of_services => {:model => "TermsOfService", :url => :terms_of_service}
}