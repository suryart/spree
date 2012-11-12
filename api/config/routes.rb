Spree::Core::Engine.routes.prepend do
  namespace :admin do
    resources :users do
      member do
        put :generate_api_key
        put :clear_api_key
      end
    end
  end

<<<<<<< HEAD
  namespace :api, :defaults => { :format => 'json' } do
=======
  namespace :api do
>>>>>>> Use versioncake for versioning of API resources
    resources :products do
      resources :variants
      resources :product_properties
    end

    resources :images
    resources :variants, :only => [:index] do
    end

<<<<<<< HEAD
    resources :option_types

=======
>>>>>>> Use versioncake for versioning of API resources
    resources :orders do
      resources :return_authorizations
      member do
        put :address
        put :delivery
        put :cancel
        put :empty
      end

      resources :line_items
      resources :payments do
        member do
          put :authorize
          put :capture
          put :purchase
          put :void
          put :credit
<<<<<<< HEAD
        end
      end

      resources :shipments do
        member do
          put :ready
          put :ship
=======
>>>>>>> Use versioncake for versioning of API resources
        end
      end
    end

<<<<<<< HEAD
    resources :zones
    resources :countries, :only => [:index, :show]
    resources :addresses, :only => [:show, :update]
    resources :taxonomies do
      member do
        get :jstree
      end
      resources :taxons do
        member do
          get :jstree
=======
      resources :shipments do
        member do
          put :ready
          put :ship
>>>>>>> Use versioncake for versioning of API resources
        end
      end
    end

    resources :zones
    resources :countries, :only => [:index, :show]
    resources :addresses, :only => [:show, :update]
    resources :taxonomies do
      resources :taxons
    end
<<<<<<< HEAD
    resources :inventory_units, :only => [:show, :update]
=======

    resources :taxons, :only => [:index]
>>>>>>> Use versioncake for versioning of API resources
  end
end
