Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/greetings/random_greeting', to: 'greetings#random_greeting'
    end
  end

  # Other routes...

  root 'root#index'
end