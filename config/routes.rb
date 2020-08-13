Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :ingredients, only: [ :new, :create ]
  end
  resources :ingredients do
    resources :doses
  end
end
