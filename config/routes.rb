ProTemplateApp31::Application.routes.draw do
  resources :blog_entries

  devise_for :users

  get "home/index"

  root :to => "home#index"
end
