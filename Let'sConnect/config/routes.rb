Rails.application.routes.draw do
  devise_for :users
  get 'welcome'=>'welcome#index'
  

  resources :docs
  authenticated :user do
  	#root "docs#index", as:"authenticated_root"
    root "profiles#index", as:"authenticated_root"
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'welcome#index'
  post 'messages', to: 'messages#create'
  get 'pages' => 'pages#home'
  get 'enrollbtech' => 'welcome#enrollbtech'
  get 'enrollmca' => 'welcome#enrollmca'
 
  get 'profiles' => 'profiles#index'
  post 'profilesPhoto' => 'profiles#create'
  get 'addProfile' => 'profiles#editPhoto'
   get 'docs' => 'docs#index'
   post 'addProfile' => 'profiles#create'
   get 'notice' => 'notices#index'
   post 'uploadPdf' => 'notices#create'
   patch "addProfile"=>"profiles#update"
   get 'event' => 'events#index'
   post 'eventjoin' => 'events#create'
end