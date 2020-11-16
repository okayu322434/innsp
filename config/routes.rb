Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'rooms#index'
  resources :rooms do
    collection do
      get 'search'
    end
  end

  resources :rooms, only:[:new, :index, :create]

end

