Myapp::Application.routes.draw do

  scope ":locale", locale: /ja|en|de/ do

    root 'welcome#index', :as => :welcome

    get '/recruits/show_recruits',     to: 'recruits#show_recruits',     :as => :show_recruits
    get '/businesses/show_businesses', to: 'businesses#show_businesses', :as => :show_businesses
    get '/projects/show_projects',     to: 'projects#show_projects',     :as => :show_projects
    get '/newses/show_newses',         to: 'newses#show_newses',         :as => :show_newses
    get '/contacts/show_contacts',     to: 'contacts#show_contacts',     :as => :show_contacts
    get '/management',                 to: 'management#index',           :as => :management
    get '/login/index',                to: 'login#index'
    get '/login/login/:id',            to: 'login#login'
    get '/login/my_page',              to: 'login#my_page'
    get '/login/logout',               to: 'login#logout'
    get '/newses/show_newses.json',    to: 'newses#show_newses'

    resources :attendences
    resources :recruits
    resources :businesses
    resources :projects
    resources :contacts
    resources :newses

    devise_for :users

    match ':controller(/:action(/:id))', via: [:get, :post, :patch]

  end

  #match '*path', to: redirect("/#{I18n.default_locale}/%{path}") , via: [:get, :post, :patch]
  match '',      to: redirect("/#{I18n.default_locale}") ,         via: [:get, :post, :patch]



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

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
