Rails.application.routes.draw do

  devise_for :users
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :motel
      get '/motelindex', to: 'motel#index_best', :as => 'motel_index_best'
    end
  end

  resources :motel

  root 'welcome#index'
  
end
