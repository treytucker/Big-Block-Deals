Bigblockdeals::Application.routes.draw do

  root :to => "deals#current"

# This is all the Deals views
  get "deals/current"
  get "deals/recent"

# This is for all the Blogs
  resources :blogs

# This is for all the Quotes
  resources :quotes


# This is for all the Widgets
  resources :widgets

end