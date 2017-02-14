Rails.application.routes.draw do
  root 'pages#batman'
  get 'pages/batman'
  get 'pages/superman'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
