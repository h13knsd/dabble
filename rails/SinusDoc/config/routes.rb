Rails.application.routes.draw do
  devise_for :doctors, :controllers => { registrations: 'doctors/registrations' }
  devise_for :patients, :controllers => { registrations: 'patients/registrations' }
  resources :acutes
  resources :chronics
  root 'welcome#index'
get '/doctors/', to: 'doctors#index', as: 'doctors'
get '/doctors/show/', to: 'doctors#show', as: 'doctors_show'
get '/patients/', to: 'patients#index', as: 'patients'
get '/patients/show/', to: 'patients#show', as: 'patients_show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
