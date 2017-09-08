# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  resources :cuentas
  get 'consolidado', action: :consolidado, controller: :movimientos
  resources :movimientos do
    get 'cuenta/:id(/pag/:page)', action: :list, on: :collection
  end
  resources :transacciones do
    member do
      get 'select_by_tipoid'
    end
    get 'tipo/:id(/pag/:page)', action: :list, on: :collection
  end
  resources :tipos_transacciones do
    get 'pag/:page', action: :index, on: :collection
  end
end
