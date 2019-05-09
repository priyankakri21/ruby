Rails.application.routes.draw do
  resources :conversations do
  resources :pmessages
  end  
 devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  
  



  resources :docs
  authenticated :user do
  	#root "docs#index", as:"authenticated_root"
    root "profiles#index", as:"authenticated_root"
  end
  root 'welcome#index'
  get 'index' => 'welcome#index'
  post 'messages', to: 'messages#create'
  get 'pages' => 'pages#home'
  get 'enrollbtech' => 'welcome#enrollbtech'
  get 'enrollmca' => 'welcome#enrollmca'
  get 'enrollmba' => 'welcome#enrollmba'
  get 'about' => 'welcome#about'
  get 'event' => 'events#index'
  get 'profiles' => 'profiles#index'
  post 'profilesPhoto' => 'profiles#create'
  get 'addProfile' => 'profiles#editPhoto'
   get 'docs' => 'docs#index'
   post 'addProfile' => 'profiles#create'
   get 'notice' => 'notices#index'
   patch "addProfile" => "profiles#update"
   get 'pmessage' => "conversations#index"
   post 'eventjoin' => 'events#create'
   
end
