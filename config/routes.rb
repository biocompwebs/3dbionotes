Rails.application.routes.draw do
  get '/' => 'main#home'
  get '/iframeAnnots' => 'frames#iframeAnnots'
  get '/sequenceIFrame' => 'frames_sequence#sequenceIFrame'
  get '/jsmolIFrame' => 'frames_jsmol#jsmolIFrame'

  get 'main/help'

  scope '/api' do
    scope '/info' do
      scope '/EMDB' do
        scope '/size' do
          scope '/:name' do
            get '/' => 'info#getEMDBsize'
          end
        end
        scope '/data' do
          scope '/:name' do
            get '/' => 'info#getEMDBinfo'
          end
        end
      end
      scope '/Uniprot' do
        scope '/:name' do
          get '/' => 'info#displayUniprotSequence'
        end
      end
    end
    scope '/mappings' do
      scope '/EMDB' do
        scope '/PDB' do
          scope '/:name' do
            get '/' => 'mappings#getPDBsFromEMDB'
          end
        end
      end
      scope '/Uniprot' do
        scope '/PDB' do
          scope '/:name' do
            get '/' => 'mappings#getPDBFromUniprot'
          end
        end
      end
      scope '/PDB' do
        scope '/Uniprot' do
          scope '/:name' do
            get '/' => 'mappings#getUniprotFromPDB'
          end
        end
      end
    end
    scope '/alignments' do
      scope '/PDB' do
        scope '/:name' do
          get '/' => 'alignments#getPDBalignment'
        end
      end
      scope '/PDBjsonp' do
        scope '/:name' do
          get '/' => 'alignments#getPDBalignmentJSONP'
        end
      end

    end
    scope '/annotations' do
      scope '/Uniprot' do
        scope '/:name' do
          get '/' => 'annotations#getUniprotAnnotations'
        end
      end
      scope '/IEDB' do
        scope '/Uniprot' do
          scope '/:name' do
            get '/' => 'annotations#getIEDBfromUniprot'
          end
        end
      end
      scope '/Phosphosite' do
        scope '/Uniprot' do
          scope '/:name' do
            get '/' => 'annotations#getPhosphositeFromUniprot'
          end
        end
      end
      scope '/biomuta' do
        scope '/Uniprot' do
          scope '/:name' do
            get '/' => 'annotations#getBiomutaFromUniprot'
          end
        end
      end
      scope '/dsysmap' do
        scope '/Uniprot' do
          scope '/:name' do
            get '/' => 'annotations#getDsysmapFromUniprot'
         end
       end
     end
   end
    scope '/lengths' do
      scope '/Uniprot' do
        scope '/:name' do
          get '/' => 'annotations#getUniprotLength'
        end
      end
    end
  end
  get '*a', :to => 'errors#routing'
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
