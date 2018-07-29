Rails.application.routes.draw do
  get 'comments/create'
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'

  resources :articles do
    resources :comments, only: [:create, :destroy]
  end

end
