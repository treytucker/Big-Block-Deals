Bigblockdeals::Application.routes.draw do

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
