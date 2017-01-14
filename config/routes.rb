Rails.application.routes.draw do

  root 'home#index'
    resource :users do
      member do
        get 'profile'
        get 'matches'
      end
    end

  get 'auth/:provider/callback', to: 'sessions#create'
  match 'sign_out', to: 'sessions#destroy', via: :delete


=begin
  #get 'users/index'

  #get 'users/edit'

  #get 'users/profile'

  #get 'users/matches'
=end


end
