# Be sure to restart your server when you modify this file.

#This is a list of all the controllers used on the static pages.
BASIC_CONTROLLERS = { 
  :about_uses => {
    :model => "AboutUs", 
    :url => :about_us, 
    :form => :about_us,
    :title => "About Us", 
    :layout => "three-fourths"
    }, 
  :contacts => {
    :model => "Contact", 
    :url => :contact, 
    :form => :contact,
    :title => "Contact", 
    :layout => "three-fourths"
    }, 
  :current_deals => {
    :model => "CurrentDeal", 
    :url => :current_deal, 
    :form => :current_deal,
    :layout => "three-fourths", 
    :title => "Current Deal"
    }, 
  :for_businesses => {
    :model => "ForBusiness", 
    :url => :for_businesses,
    :form => :for_business, 
    :title => "For Business", 
    :layout => "three-fourths"
    }, 
  :how_it_works_businesses => {
    :model => "HowItWorksBusiness", 
    :url => :how_it_works_businesses, 
    :form => :how_it_works_business,
    :title => "How it Works", 
    :layout => "full-width", 
    :hiw_active => "business-active"
    }, 
  :how_it_works_consumers => {
    :model => "HowItWorksConsumer", 
    :url => :how_it_works_consumers, 
    :form => :how_it_works_consumer,
    :title => "How it Works", 
    :layout => "full-width", 
    :hiw_active => "consumer-active"
    }, 
  :privacy_policies => {
    :model => "PrivacyPolicy", 
    :url => :privacy_policy,
    :form => :privacy_policy,
    :title => "Privacy Policy", 
    :layout => "three-fourths"
    }, 
  :recent_deals => {
    :model => "RecentDeal", 
    :url => :recent_deals,
    :form => :recent_deal,
    :title => "Recent Deals", 
    :layout => "three-fourths"
    },
  :terms_of_services => {
    :model => "TermsOfService", 
    :url => :terms_of_service,
    :form => :terms_of_service,
    :title => "Terms of Service", 
    :layout => "three-fourths"
    }
}

# This is currently used for authentication. maybe...
BOMB_DOT_COM = { 
  :trey => { 
    :username => "sick designer", 
    :password => "trey's the man"
    }, 
  :andy => {
    :username => "Andy Ellis", 
    :password => "password123"
    }
  }