Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  authenticated :user do
    root to: 'static#home', as: :authenticated_root
  end
  
  devise_scope :user do
    root to: "devise/sessions#new"
  end

  get '/users/:id', to: 'registrations#edit'
  
end