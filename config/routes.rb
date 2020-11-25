Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :runs,  except:[:destroy] do
    resources :meetings, only:[:create, :update]
  end

  resources :meetings, only: [:create, :update] do
    resources :reviews, only: [:new, :create, :show]
  end

  resources :users do
    resources :buddy_connections, only:[:index, :show, :destroy, :create, :edit]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
