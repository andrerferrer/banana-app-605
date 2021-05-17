Rails.application.routes.draw do
  get 'about', to: 'pages#about'
  # verb 'path', to: 'controller#action'
  get 'contact', to: 'pages#contact'
  
  # if we want to create a path to the root, it's just '/'
  get '/', to: 'pages#home', as: :root
  # the above is the same as
  #  root to: 'pages#home'
end
