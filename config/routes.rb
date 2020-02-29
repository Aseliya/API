Rails.application.routes.draw do
  resources :users, only: [:index]
  namespace 'api' do
    namespace 'v1' do
      resources :users do
        resources :news
      end
      resources :news do
        resource :favorite, only: [:create, :destroy]
      end
    end
  end
  post 'authenticate', to: 'authentication#authenticate'
end
