Rails.application.routes.draw do
  # get 'artists/index', to: 'songs#index'
  # get 'artists/show'
  # get 'artists/new'
  # get 'artists/edit'
  # get 'artists/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "artists#index"
resources :artist, only: [:index, :show]
end

#         root GET  /                     artist#index
# artist_index GET  /artist(.:format)     artist#index
#       artist GET  /artist/:id(.:format) artist#show