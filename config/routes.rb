Rails.application.routes.draw do
    root to: 'home#index'

    get 'home/search'
    get 'home/job_directory'
end
