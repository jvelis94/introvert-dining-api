Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :orders do
      resources :order_items
    end
    resources :food_items
  end
end
