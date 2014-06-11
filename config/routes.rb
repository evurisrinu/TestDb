TestDb::Application.routes.draw do
  resources :fourties

  resources :thirtynines

  resources :thirtyeights

  resources :thirtysevens

  resources :thirtysixes

  resources :thirtyfives

  resources :thirtyfours

  resources :thirtythrees

  resources :thirtytwos

  resources :thirtyones

  resources :thirties

  resources :twentynines

  resources :twentyeights

  resources :twentysevens

  resources :twentysixes

  resources :twentyfives

  resources :twentyfours

  resources :twentythrees

  resources :twentytwos

  resources :twentyones

  resources :twenties

  resources :nineteens

  resources :eightteens

  resources :seventeens

  resources :sixteens

  resources :fifteens

  resources :fourteens

  resources :thirteens

  resources :twelves

  resources :elevens

  resources :tens

  resources :nines

  resources :eights

  resources :sevens

  resources :sixes

  resources :fives

  resources :fours

  resources :threes

  resources :twos

  resources :ones

  resources :tests

  resources :people

  resources :students

  mount Dbconsole::Engine, at: "/dbconsole"
  resources :users

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  


  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
