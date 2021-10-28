Rails.application.routes.draw do
    resources :posts do
      resources :comments
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'

  root 'articles#index'
end
