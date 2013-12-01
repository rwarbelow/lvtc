Lvtc::Application.routes.draw do
  resources :race_registrations

  resources :announcements

  resources :newsletters

  resources :user_memberships

  resources :user_events

  resources :user_involvements

  resources :club_involvements

  resources :memberships

  resources :champion_series_points

  resources :grand_prix_points

  resources :users
  
  resources :charges

  resources :events

  get 'about', :to => 'welcome#about'
  get 'pdf_schedule', :to => 'pdf_schedule#pdf'
  get 'local_running_links', :to => 'welcome#running_links'
  get 'lvtc_membership', :to => 'welcome#lvtc_membership'
  get 'membership_type', :to => 'user_memberships#type'
  get 'membership_info', :to => 'user_memberships#info'
  get 'contact', :to => 'welcome#contact', :as => "contact"
  get 'champion_series_points_pdf', :to => 'welcome#champion_series_points_pdf', :as => "champion_series_points_pdf"

  get 'results/:id', :to => 'events#results', :as => "results"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
