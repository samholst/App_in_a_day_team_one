Rails.application.routes.draw do
  devise_for :users
  get 'pages/index'

  get 'pages/calendar'

  get 'pages/reservation'

  root to: 'pages#calendar'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
