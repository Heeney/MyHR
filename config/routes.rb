Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/contact'
  get 'welcome/faq'
  get 'welcome/pricing'
  get 'welcome/features'

  resources :invoices
  
  root to: 'welcome#index' <!--- # stands for: controller#Method call , welcome controller, Actual method. --> 
  
  
end
