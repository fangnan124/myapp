Myapp::Application.routes.draw do

  # [my] catch ja/newsinfos/
  scope ":locale", locale: /ja|en|de/ do
    get '/recruits/show_recruits', to: 'recruits#show_recruits'
    resources :recruits

    get '/business_descriptions/show_business_descriptions', to: 'business_descriptions#show_business_descriptions'
    resources :business_descriptions

    resources :users

    get '/business_results/show_business_results', to: 'business_results#show_business_results'
    resources :business_results

    resources :contacts

    get '/newsinfos/show_newsinfos', to: 'newsinfos#show_newsinfos'
    resources :newsinfos

    get '/login/index', to: 'login#index'
    get '/login/login/:id', to: 'login#login'
    get '/login/my_page', to: 'login#my_page'
    get '/login/logout', to: 'login#logout'

    # The priority is based upon order of creation: first created -> highest priority.
    # See how all your routes lay out with "rake routes".

    # You can have the root of your site routed with "root"
    root 'welcome#index'

    match ':controller(/:action(/:id))', via: [:get, :post, :patch]

  end

  # [my] catch
  match '*path', to: redirect("/#{I18n.default_locale}/%{path}") , via: [:get, :post, :patch]
  match '', to: redirect("/#{I18n.default_locale}") , via: [:get, :post, :patch]






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
