Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  resources :owners
  devise_for :users
  root to: 'articles#index'
  resources :articles

  namespace :mypage do
    resources :articles do
      post :confirm, action: :confirm_new, on: :new
    end
  end 

  namespace :admin do
    resources :articles
  end
end