Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :performances, only: [ :index, :create, :destroy ]
    end
  end
end
