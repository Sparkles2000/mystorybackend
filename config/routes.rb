Rails.application.routes.draw do
  resources :users do
    resources :posts
  end
  resources :posts do
    resources :tags
    resources :comments
  end
  resources :tags do
    resources :posts
  end
  resources :comments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
