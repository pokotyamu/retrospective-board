Rails.application.routes.draw do
  resources :boards do
    resources :cards, only: [:create, :destroy], shallow: true do
      resources :comments, shallow: true
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
