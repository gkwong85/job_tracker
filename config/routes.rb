Rails.application.routes.draw do

  devise_for :users
  authenticated :user do
    root to: 'dashboards#index', as: :authenticated_root
  end
  root to: redirect('/users/sign_in')
  get 'jobs' => 'jobs#index'
  get 'contacts' => 'contacts#index'
  get 'contacts/:id' => 'contacts#show'
  get 'contacts/:id/edit' => 'contacts#edit'
  get 'jobs/:id' => 'jobs#show'
  get 'jobs/:id/edit' => 'jobs#edit'
  get 'relationships/:id' => 'relationships#index'
  get 'interactions' => 'interactions#index'
  get '/calendars/googlelogin' => 'calendars#redirect'
  get '/oauthcallback' => 'calendars#callback'
  post 'jobs' => 'jobs#create'
  post 'contacts' => 'contacts#create'
  post 'jobs/:id' => 'jobs#update'
  post 'contacts/:id' => 'contacts#update'
  post 'relationships/:id' => 'relationships#create'
  post 'interactions' => 'interactions#create'
  post '/calendars' => 'calendars#addevent'
  delete 'contacts/:id' => 'contacts#destroy'
  delete 'jobs/:id' => 'jobs#destroy'
  delete 'relationships/:id' => 'relationships#destroy'
  delete 'interactions/:id' =>'interactions#destroy'
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