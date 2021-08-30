Rails.application.routes.draw do
  resources :searches
  resources :bookshops
  resources :publishers
  resources :books
  resources :authors
	root "books#index"
	post "/books/new", to: "books#new"
	post "/authors/new", to: "authors#new"
	post "/searches/new", to: "searches#new"	
end
