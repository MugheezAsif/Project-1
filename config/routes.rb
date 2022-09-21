Rails.application.routes.draw do
  
  root 'welcome#main'
  devise_for :accounts
  
  
  resources :comments
  resources :posts
  get 'my_posts', to: 'posts#my_posts', as: 'my_posts'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
