CloseOut::Application.routes.draw do

  resources :cabinets

  resources :equipmentinracks

  resources :port_mapfor3750_mes

  resources :site_reviews

  resources :radios

  resources :antennas

  match '/help', :to => 'static_pages#help'
  match '/about', :to => 'static_pages#about'
  match '/reviews', :to => 'site_reviews#index'
  match '/towers', :to => 'towers#index'
  match '/techs', :to => 'teches#index'
  match '/cabinets', :to => 'cabinets#index'
  match '/contact', :to => 'static_pages#contact'
  match '/login', :to => 'lock#login'

  resources :notes

  resources :boms

  resources :scope_of_works

  resources :posts

  resources :teches
  
  resources :sites, :has_many => [:teches, :towers, :radios, :antennas]
  
  resources :towers, :has_many => [:radios, :antennas]

  resources :radios, :has_many => :antennas

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
root :to => 'sites#index'
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
