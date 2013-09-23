Splittr::Application.routes.draw do

  root :to => 'bills#new'
  resources :bills, :only => [:create, :show]
  resources :people, :only => [:new, :create]
  resources :items, :only => [:new, :create]

  # post "/bills" => "home#create_bill"
  # post "/num_people" => "home#num_people"
  # post "/items" => "home#create_item"

end
