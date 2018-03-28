Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#root'
  post 'register' => 'users#create'
  get 'thanks' => 'sessions#thanks'
end
