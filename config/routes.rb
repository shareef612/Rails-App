Rails.application.routes.draw do

  resources :emails

  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
  resources :posts  do
    resources :comments
  end

  root "posts#index"

  get '/about', to: 'pages#about'
  get '/new', to: 'emails#new' 

end
