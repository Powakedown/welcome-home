Rails.application.routes.draw do
  get 'messenger/new_mail'

  root to: 'pages#home'

  get "/blog", to: "pages#blog"
  get "/newsletter", to: "pages#newsletter"
  get "/new_mail", to: "messenger#new_mail"
  resources :posts, only: %i(index new create)
  resources :categories, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
