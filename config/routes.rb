Rails.application.routes.draw do

  resources :assessments
  resources :stories

  get 'company_health' => 'pages#company_health'
  get 'contact_us' => 'pages#contact_us'
  get 'home' => 'pages#home'
  get 'legal' => 'pages#legal'
  get 'privacy_policy' => 'pages#privacy_policy'
  get 'story' => 'pages#story'
  get 'our_purpose' => 'pages#our_purpose'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
end
