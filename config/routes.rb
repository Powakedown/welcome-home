Rails.application.routes.draw do
  root to: 'pages#home'

  get "/blog", to: "pages#blog"
  resources :posts, only: [:index]
  resources :categories, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
