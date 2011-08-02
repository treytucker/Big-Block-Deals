Bigblockdeals::Application.routes.draw do
<<<<<<< HEAD

  BASIC_CONTROLLERS.each do |f|
      get "#{f.last[:url].to_sym}/(:format)", :controller => "basics", :action => "#{f.first}", :as => f.last[:url]
      get "administration/#{f.last[:url].to_sym}/edit/(:id)(:format)", :controller => "basic_edits", :action => "#{f.first}", :as => "#{f.first}_edit"
      match "administration/#{f.last[:url].to_sym}/create/(:id)(:format)", :controller => "basic_edits", :action => "#{f.first}_create", :as => "#{f.first}_create"
  end
  root :to => "basics#current_deals"


  # This is for all the Blogs
    resources :blogs

  # This is for all the Quotes
    resources :quotes

  # This is for all the Widgets
    resources :widgets

end
=======

@controllers = [ "about_uses", "contacts", "current_deals",  "for_businesses","how_it_works_businesses", "how_it_works_consumers", "recent_deals", "privacy_policies", "terms_of_services" ]
@controllers.each do |f|
    get "#{f}/(:format)", :controller => "#{f}", :action => "index", :as => "#{f}"
    get "administration/#{f}/edit/(:id)(:format)", :controller => "#{f}", :action => "edit", :as => "#{f}_edit"
    put "administration/#{f}/update/(:id)(:format)", :controller => "#{f}", :action => "update"
    post "administration/#{f}/update/(:id)(:format)", :controller => "#{f}", :action => "update"
  end

root :to => "current_deals#index"

# This is for all the Blogs
  resources :blogs

# This is for all the Quotes
  resources :quotes

# This is for all the Widgets
  resources :widgets

end
>>>>>>> 79e4da90fa2bff5cdf6786a59bab9050c23dd323
