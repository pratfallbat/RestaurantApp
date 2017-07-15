Rails.application.routes.draw do
  
# /food_item => displays all food item
# /food_item/123 => displays food item with id 123
# /food_item/new => create a new food item


  resources :food_items

  get 'menu' =>'menu#index'

 get '/contact_us'  => 'welcome#contact_us'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'welcome#index'
end
