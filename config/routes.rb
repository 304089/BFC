Rails.application.routes.draw do
  devise_for :users
  root to:  'homes#top'
  resources :users
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
