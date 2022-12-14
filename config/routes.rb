Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => "registrations",
    :omniauth_callbacks => "callbacks"
  }

  devise_scope :user do 
    get "login", to: "devise/sessions#new"
    get "signup", to: "devise/registrations#new"
  end

  resources :todo_lists do
    resources :todo_items do
    member do
    patch :complete
     end
    end
   end
  

  root 'application#welcome'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
