Rails.application.routes.draw do
  
  root 'welcome#main'
  #devise_for :accounts
  devise_for :account
  
  
  resources :posts do 
    resources :comments
  end
  get 'my_posts', to: 'posts#my_posts', as: 'my_posts'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
