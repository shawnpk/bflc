Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }
  get 'index', to: 'static_pages#index'
  get 'about_the_firm', to: 'static_pages#about_the_firm'
  get 'partners', to: 'static_pages#partners'
  get 'our_services', to: 'static_pages#our_services'
  get 'industries', to: 'static_pages#industries'
  get 'careers', to: 'static_pages#careers'
  get 'knowledge_base', to: 'static_pages#knowledge_base'
  get 'contact_us', to: 'static_pages#contact_us'

  root 'static_pages#index'
end
