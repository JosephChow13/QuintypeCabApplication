Rails.application.routes.draw do
  resources :cabs, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :rides, only: [:create] do
    member do
      put 'start_ride'
      put 'end_ride'
      get 'payment_amount'
    end
  end
 root 'cabs#index'

end
