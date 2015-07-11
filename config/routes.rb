Rails.application.routes.draw do
  resources :categories

  devise_for :users
  resources :pins do
  	member do
  		put "like", to: "pins#upvote"
  	end
  end

  root "pins#index"
end
