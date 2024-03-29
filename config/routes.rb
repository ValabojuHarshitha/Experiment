Rajesh::Application.routes.draw do
  resources :parents

  resources :students

  resources :teachers

  resources :parts

  resources :assemblies

  # resources :ads
# 
  # resources :magazines

  #resources :comments
  #assert_generates "/about", :controller => "admin", :action => "about"
  #resources :posts
  scope(:path_names => { :new => "neu", :edit => "bearbeiten" }) do
     resources :products, :path => "harsha" # when u type "harsha" on the browser it redirects to products index page.
  end
  
  resources :photos, :controller => "buyer/posts"  # If u mention "photos/new" on the browser ,it 'll redirect to "buyer/posts/new action"..
  resources :photos ,:as => "images" # makes use of "images" in the named helper..like edit_image_path(:id)
 # resources :users ,:path_names => { :new => 'make', :edit => 'change' }
  resources :buyer do
    get 'exp' ,:on => :collection # member won't work here,coz we dnt have particular "buyer" member like ""/buyer/1/exp""
  end

  resources :photos do 
    member do 
      get 'edit'
    end
  end

  resources :products

  resources :users
  
  namespace :buyer do
   resources  :comments ,:posts
  end
  # scope :module => "buyer" do
    # resources  :comments #:posts,
  # end
  # scope "/buyer" do
    # resources :posts, :comments
  # end
  
  resources :magazines do
    resources :ads #,:as=> "mag_ad" this will create new_magazine_mag_ad_path
  end
  #----------------------- Non resourceful -------------------
 # match ':admin(/:user_create)' => 'admin#user_create'
 match 'student/:id' => 'photos#show'
  match 'admin/query' => 'admin#query'
 # match 'admin/user_create' => 'admin#query' # default routing
  match '/dis' => 'admin#query' ,:as => 'itsme', :via => [:get]
  match 'magazines/:id' => 'magazines#show', :constraints => { :id => /[^\/]+/  }
  match '/exp' => redirect('/magazines')
  #get ':controller/:action/:id/:user_id'
  #match ':admin(/:has_test)', :controller => /users\/[^\/]+/
  #----------------------- Non resourceful ends-------------------
  
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
  match 'admin/has_test' => 'admin#has_test'
  match 'admin/role_create' => 'admin#role_create'
  match '/user_create' => 'admin#user_create'
  match 'admin/signin' => 'admin#signin'
  
  match 'buyer/catalog' => 'buyer#catalog'
   match 'buyer/show' => 'buyer#show'
   match 'buyer/cart_catalog' => 'buyer#cart_catalog'
    match 'buyer/display_total' => 'buyer#display_total'
    match 'buyer/pay' => 'buyer#pay'
    match 'buyer/new_patient' => 'buyer#new_patient'
    match 'buyer/new_phy' => 'buyer#new_phy'
    match 'buyer/print_receipt' => 'buyer#print_receipt'
    match 'buyer/exp' => 'buyer#exp'
     match 'admin/logout' => 'admin#logout'
     
     
     match 'admin/display_users' => 'admin#display_users'
     
     #------------------------- not mandatory----------
     match  'admin/start_append' => 'admin#start_append'
    
     #------------------------- not mandatory----------
     
     match 'buyer/new_phy' => 'buyer#new_phy'
     match 'buyer/new_patient' => 'buyer#new_patient'
      match 'buyer/new_assembly' => 'buyer#new_assembly'
       match 'buyer/new_part' => 'buyer#new_part'
     #------------------- rails intermediate-----------
     match 'demo/blck' => 'demo#blck'
     match 'demo/var_mthd' => 'demo#var_mthd'
     
     #------------------- rails intermediate-----------
     #----------------------Experiment starts---------------------------
     
     #resource :geocoder
     #----------------------Experiment ends-----------------------------
  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  #match ':controller(/:action)(.:format)'
end
