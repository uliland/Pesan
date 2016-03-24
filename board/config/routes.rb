Rails.application.routes.draw do
  
  get 'pesans' => 'pesans#index'
  post 'pesans' => 'pesans#create'
  get 'pesans_pure' => 'pesans#index_pure'
 
  root 'welcome#index'  
  
end
