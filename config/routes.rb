Rails.application.routes.draw do
  devise_for :users
  root to:  'homes#top'
  get "/search" =>"searches#search"


  resources :users do
    resource :relations
    get "followings" => "relations#followings"
    get "followers" => "relations#followers"
  end

  resources :posts do
    resources :post_comments
    resource :favorite do
      collection do
        get :index
      end
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
