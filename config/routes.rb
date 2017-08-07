Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  get "pages/about"
  get "pages/contact"
  get "visitors/dashboard", as: :dashboard_visitors
  resources :sessions, only: [:create, :destroy]

  resources :subjects
  resources :topics do
    member do
      get :summarize_and_conclude
    end
  end
  resources :pages do
    member do
      get :approve
    end
  end

  resources :discussions, only: [:index] do
    collection do
      get :pending
      get :in_review
    end
  end
  resources :comments do
    member do
      put :like
      put :dislike
    end
  end

  devise_for :users
  root "visitors#index"
end
