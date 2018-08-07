Rails.application.routes.draw do
  devise_for :users
  resources :users do

    resource :user_profile,only: [:show,:edit,:update]
  end
    root to: 'home#index'
    get 'search',to: 'home#search'
    get 'home/result'
    get 'home/job_directory'
    get 'home/show'
    get 'result',to: "home#result"

    resources :jobs do
      resources :job_applications
      end
end
