#This is a list of all the controllers used on the static pages.

BASIC_CONTROLLERS = { 
  :about_uses => {:model => "AboutUs", :url => 'about_us', :title => "About Us"}, 
  :contacts => {:model => "Contact", :url => :contact, :title => "Contact"}, 
  :current_deals => {:model => "CurrentDeal", :url => :current_deal, :layout => "three-fourths", :title => "Current Deal"}, 
  :for_businesses => {:model => "ForBusiness", :url => :for_business, :title => "For Business"}, 
  :how_it_works_businesses => {:model => "HowItWorksBusiness", :url => :how_it_works_business, :title => "How it Works"}, 
  :how_it_works_consumers => {:model => "HowItWorksConsumer", :url => :how_it_works_consumer, :title => "How it Works"}, 
  :privacy_policies => {:model => "PrivacyPolicy", :url => :privacy_policy, :title => "Privacy Policy"}, 
  :recent_deals => {:model => "RecentDeal", :url => :recent_deals, :title => "Recent Deals"},
  :terms_of_services => {:model => "TermsOfService", :url => :terms_of_service, :title => "Terms of Service"}
}