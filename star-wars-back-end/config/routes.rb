Rails.application.routes.draw do
  scope "api/v1" do
    resources :planets
    resources :people
    resources :films

    post 'sign_in', to:   "user_sessions#create"
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
