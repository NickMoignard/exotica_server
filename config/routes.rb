Rails.application.routes.draw do
  resources :time_slots
  resources :dancers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # post '/dancers/arrival', to: 'dancers#arrival'

  namespace 'api' do
    resources :time_slots
    resources :dancers
  end

end
