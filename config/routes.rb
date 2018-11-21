Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  resources :restaurants do
    collection do
      get 'best', to: 'restaurants#best'
    end

# on met tout ce qui nécessite l'ID dans member
    member do
      get 'chef', to: 'restaurants#chef'
    end

    resources :reviews, only: [:new, :create]
  end
  # ici je n'ai plus besoin de l'ID du restaurant qui est déjà en base
  resources :reviews, only: [:show, :edit, :update, :delete]

end
