Rails.application.routes.draw do
  get 'menu' =>'menu#index'

 get '/contact_us'  => 'welcome#contact_us'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'welcome#index'
end
