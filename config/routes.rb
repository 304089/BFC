Rails.application.routes.draw do
  devise_for :users
  root to:  'homes#top'


  resources :users do
    resource :relation
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

  resources :groups do
    member do
      post :join
      delete :out
    end
    resource :group_chat
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
