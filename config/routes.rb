Bigblockdeals::Application.routes.draw do

  BASIC_CONTROLLERS.each do |f|
      get "#{f.last[:url].to_sym}/(:format)", :controller => "basics", :action => "#{f.first}", :as => f.last[:url]
      get "administration/#{f.last[:url].to_sym}/edit/(:id)(:format)", :controller => "basic_edits", :action => "#{f.first}", :as => "#{f.first}_edit"
      match "administration/#{f.last[:url].to_sym}/create/(:id)(:format)", :controller => "basic_edits", :action => "#{f.first}_create", :as => "#{f.first}_create"
  end
  root :to => "basics#current_deals"


  # This is for all the Blogs
    resources :good_reads
    get '/good_reads/catagory/:id', :controller => 'good_reads', :action => 'show_catagories', :as => "good_reads_catagory"

  # This is for all the Quotes
    resources :quotes

  # This is for all the Widgets
    resources :widgets
    
  #this is for all the Catagories for the good reads
    resources :catagories

end