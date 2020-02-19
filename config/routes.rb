Rails.application.routes.draw do
  resources :batches do
    resources :students, only: [:create]
  end

  resources :students, only: [:destroy]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
