Rails.application.routes.draw do
  root 'users#index'
  get 'users/index'
  get 'users/result' => "users#result"
  post 'user' => 'users#user_survey'
end
