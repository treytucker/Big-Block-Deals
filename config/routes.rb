Bigblockdeals::Application.routes.draw do

  get "basics/about_uses"
  
  get "basics/contacts"
  
  get "basics/current_deals"
  
  get "basics/for_businesses"
  
  get "basics/how_it_works_businesses"
  
  get "basics/how_it_works_consumers"
  
  get "basics/privacy_policies"
  
  get "basics/recent_deals"
  
  get "basics/terms_of_services"

  BASIC_CONTROLLERS.each do |f|
      get "#{f.first}/(:format)", :controller => "basics", :action => "#{f.first}", :as => "#{f.first}"
      # get "administration/#{f}/edit/(:id)(:format)", :controller => "#{f}", :action => "edit", :as => "#{f}_edit"
      # put "administration/#{f}/update/(:id)(:format)", :controller => "#{f}", :action => "update"
      # post "administration/#{f}/update/(:id)(:format)", :controller => "#{f}", :action => "update"
  end

  root :to => "current_deals#index"


  # This is for all the Blogs
    resources :blogs

  # This is for all the Quotes
    resources :quotes

  # This is for all the Widgets
    resources :widgets

end
