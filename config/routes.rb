Bigblockdeals::Application.routes.draw do

  # This is for the Basic pages and their edit pages
  BASIC_CONTROLLERS.each do |f|
      get "#{f.last[:url].to_sym}/(:format)", :controller => "basics", :action => "#{f.first}", :as => f.last[:url]
      get "admin/#{f.last[:url].to_sym}/edit/(:id)(:format)", :controller => "basic_edits", :action => "#{f.first}", :as => "#{f.first}_edit"
      match "admin/#{f.last[:url].to_sym}/create/(:id)(:format)", :controller => "basic_edits", :action => "#{f.first}_create", :as => "#{f.first}_create"
  end
  root :to => "basics#current_deals"


  # This is for all the Good Reads
    get '/admin/good_reads/new' => "good_reads#new", :as => "new_good_read"
    get '/admin/good_reads/:id/edit' => "good_reads#edit", :as => "edit_good_read"
    get '/good_reads/catagory/:id', :controller => 'good_reads', :action => 'show_catagories', :as => "good_reads_catagory"
    match "/good_reads/date" => redirect("/good_reads") 
    get '/good_reads/date/(:year(/:month))', :controller => 'good_reads', :action => 'show_dates', :as => "good_reads_date"
    resources :good_reads
    
  # This is for all the Quotes
    resources :quotes

  # This is for all the Widgets
    resources :widgets
    
  #this is for all the Catagories for the good reads
    resources :catagories

  # This is for the Administration usage.
    resources :admins
    
  # This is for loggin in and out
    resources :sessions
    get '/admin/login' => 'sessions#new', :as => "login"
    get '/admin/logout' => 'sessions#destroy', :as => "logout"
end