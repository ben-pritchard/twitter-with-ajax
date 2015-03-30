Rails.application.routes.draw do
  devise_for :users
  root :to => 'yaks#index'
  
  resources :yaks do
    resources :yak_backs, :except => [:show, :index]
  end
end
