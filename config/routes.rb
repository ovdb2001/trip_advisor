Rails.application.routes.draw do
  resources :restaurants do
    collection do
      get 'best', to: 'restaurants#best'
    end

    member do
      get 'chef', to: 'restaurants#chef'
    end
  end
end
