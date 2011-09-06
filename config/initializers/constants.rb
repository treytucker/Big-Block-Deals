# Be sure to restart your server when you modify this file.

#This is a list of all the controllers used on the static pages.
BASIC_CONTROLLERS = { 
  :about_uses => {
    :model => "AboutUs", 
    :url => :about_us, 
    :form => :about_us,
    :title => "About Us", 
    :layout => "three-fourths",
    :loaddc => "true"
    }, 
  :contacts => {
    :model => "Contact", 
    :url => :contact, 
    :form => :contact,
    :title => "Contact", 
    :layout => "three-fourths",
    :loaddc => "true"
    }, 
  :current_deals => {
    :model => "CurrentDeal", 
    :url => :current_deal, 
    :form => :current_deal,
    :layout => "three-fourths", 
    :title => "Current Deal",
    :page => "home",
    :loaddc => "false"
    }, 
  :for_businesses => {
    :model => "ForBusiness", 
    :url => :for_businesses,
    :form => :for_business, 
    :title => "For Business", 
    :layout => "three-fourths",
    :page => "business",
    :loaddc => "true"
    }, 
  :how_it_works_businesses => {
    :model => "HowItWorksBusiness", 
    :url => :how_it_works_businesses, 
    :form => :how_it_works_business,
    :title => "How it Works", 
    :layout => "full-width", 
    :hiw_active => "business-active",
    :loaddc => "true"
    }, 
  :how_it_works_consumers => {
    :model => "HowItWorksConsumer", 
    :url => :how_it_works_consumers, 
    :form => :how_it_works_consumer,
    :title => "How it Works", 
    :layout => "full-width", 
    :hiw_active => "consumer-active",
    :loaddc => "true"
    }, 
  :privacy_policies => {
    :model => "PrivacyPolicy", 
    :url => :privacy_policy,
    :form => :privacy_policy,
    :title => "Privacy Policy", 
    :layout => "mostly-text",
    :loaddc => "true"
    }, 
  :recent_deals => {
    :model => "RecentDeal", 
    :url => :recent_deals,
    :form => :recent_deal,
    :title => "Recent Deals", 
    :layout => "three-fourths",
    :page => "recent-deals",
    :loaddc => "false"
    },
  :terms_of_services => {
    :model => "TermsOfService", 
    :url => :terms_of_service,
    :form => :terms_of_service,
    :title => "Terms of Service", 
    :layout => "mostly-text",
    :loaddc => "true"
    },
  :user_widgets => {
    :model => "UserWidget", 
    :url => :user,
    :form => :current_deal, 
    :title => "Your Account", 
    :layout => "three-fourths",
    :page => "user-page",
    :loaddc => "true"
    }
}