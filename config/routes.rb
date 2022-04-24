Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post :signup, to: "auth#signup"
  post :login, to: "auth#login"
  delete :logout, to: "auth#logout"

  resources :users, only: [:show, :update]
end
