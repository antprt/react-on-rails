Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'groups/index'
      post 'groups/create'
      delete 'groups/:id', to: 'groups#destroy'
    end
  end
  
  root "groups#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
