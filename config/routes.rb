Rails.application.routes.draw do
  get '/' => 'users#index'
  get 'users' => 'users#index'
  get 'users/new' => 'users#index'
  post 'users' => 'users#create'
  get 'users/exist' => 'users#exist'
  get 'users/success' => 'users#success'
  post 'send' => 'susbcribe#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
