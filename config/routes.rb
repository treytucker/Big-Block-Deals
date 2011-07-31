Bigblockdeals::Application.routes.draw do
#This is a list of all the controllers used on the static pages.

    get "/about_us" => "basics#about_uses"
    get "/contact" => "basics#contacts"
    get "/current_deal" => "basics#current_deals"
    get "/for_businesses" => "basics#for_businesses"
    get "/how_it_works_businesses" => "basics#how_it_works_businesses"
    get "/how_it_works_consumers" => "basics#how_it_works_consumers"
    get "/privacy_policy" => "basics#privacy_policies"
    get "/recent_deals" => "basics#recent_deals"
    get "/terms_of_service" => "basics#terms_of_services"

  # Potentially implimented in future to refactor the code...
  # BASIC_CONTROLLERS.each do |f|
  #     get "#{f.first}/(:format)", :controller => "basics", :action => "#{f.first}"
  #     # get "administration/#{f}/edit/(:id)(:format)", :controller => "#{f}", :action => "edit", :as => "#{f}_edit"
  #     # put "administration/#{f}/update/(:id)(:format)", :controller => "#{f}", :action => "update"
  #     # post "administration/#{f}/update/(:id)(:format)", :controller => "#{f}", :action => "update"
  # end
  root :to => "basics#current_deals"


  # This is for all the Blogs
    resources :blogs

  # This is for all the Quotes
    resources :quotes

  # This is for all the Widgets
    resources :widgets

end
