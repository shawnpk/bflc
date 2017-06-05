Rails.application.routes.draw do
  resources :articles

  devise_for :users, :controllers => { :registrations => "registrations" }

  get 'index',                          to: 'static_pages#index'
  get 'about_the_firm',                 to: 'static_pages#about_the_firm'
  get 'partners',                       to: 'static_pages#partners'
  get 'our_services',                   to: 'static_pages#our_services'
  get 'industries',                     to: 'static_pages#industries'
  get 'careers',                        to: 'static_pages#careers'
  get 'knowledge_base',                 to: 'static_pages#knowledge_base'
  # get 'contact_us',                     to: 'static_pages#contact_us'

  get 'doug_beach',                     to: 'static_pages#doug_beach'
  get 'gary_freeman',                   to: 'static_pages#gary_freeman'
  get 'gene_lim',                       to: 'static_pages#gene_lim'
  get 'steve_cleland',                  to: 'static_pages#steve_cleland'
  get 'susan_lewis',                    to: 'static_pages#susan_lewis'

  get 'accounting_and_assurance',       to: 'static_pages#accounting_and_assurance', as: 'accounting_assurance'
  get 'business_advisory',              to: 'static_pages#business_advisory'
  get 'complex_business_transaction',   to: 'static_pages#complex_business_transaction'
  get 'cost_segregation',               to: 'static_pages#cost_segregation'
  get 'estate_planning',                to: 'static_pages#estate_planning'
  get 'fraud_prevention',               to: 'static_pages#fraud_prevention'
  get 'mergers',                        to: 'static_pages#mergers'
  get 'starting_a_business',            to: 'static_pages#starting_a_business'
  get 'strategic_planning',             to: 'static_pages#strategic_planning'
  get 'succession',                     to: 'static_pages#succession'
  get 'tax_services',                   to: 'static_pages#tax_services'

  get 'construction',                   to: 'static_pages#construction'
  get 'craft_brewing',                  to: 'static_pages#craft_brewing'
  get 'family_owned_businesses',        to: 'static_pages#family_owned_businesses'
  get 'franchise',                      to: 'static_pages#franchise'
  get 'healthcare',                     to: 'static_pages#healthcare'
  get 'high_net_worth_individuals',     to: 'static_pages#high_net_worth_individuals', as: 'high_net_worth'
  get 'law_firms',                      to: 'static_pages#law_firms'
  get 'manufacturing_and_distribution', to: 'static_pages#manufacturing_and_distribution', as: 'manufacturing_distribution'
  get 'not_for_profit',                 to: 'static_pages#not_for_profit'
  get 'real_estate',                    to: 'static_pages#real_estate'
  get 'retail',                         to: 'static_pages#retail'
  get 'service_firms',                  to: 'static_pages#service_firms'
  get 'technology',                     to: 'static_pages#technology'

  get 'contact_us',                     to: 'messages#new', as: 'new_message'
  post 'contact_us',                     to: 'messages#create', as: 'create_message'

  root 'static_pages#index'
end
