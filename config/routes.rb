Rails.application.routes.draw do
  devise_for :users
    root to: 'home#index'

    get 'home/search'
    get 'home/result'
    get 'home/job_directory'
    get 'home/show'

end
