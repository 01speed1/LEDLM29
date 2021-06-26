Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static#index'

  namespace :v1, default: { format: :json } do
    #get :things, to: 'things'
  end

end
