Rails.application.routes.draw do
  resources :cuentas
  resources :movimientos do
    member do
      get 'list'
    end
  end
  resources :transacciones do
  	member do
  		get 'select_by_tipoid'
  		# get 'list'
    end
    get 'list/:id(/page/:page)', action: :list, on: :collection
  end
  resources :tipos_transacciones
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
