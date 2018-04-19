Rails.application.routes.draw do
  get 'static_pages/about'

  get 'static_pages/catalog'

  get 'static_pages/blog'

  get 'static_pages/contact'

  # This line mounts Solidus's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Solidus relies on it being the default of "spree"
  mount Spree::Core::Engine, at: '/'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
