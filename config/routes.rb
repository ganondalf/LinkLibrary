Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  get 'auth/:provider/callback', to: 'sessions#creategoogle'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:new, :create, :destroy]
  resources :welcome, only: [:index, :show]
  resources :users do
    resources :collections
  end
  resources :links

  post '/importlinks' => 'links#create_remotely'
  get '/bookmarklets/:id' =>'links#userbookmark'
  get 'gettingstarted' => 'welcome#show'

end

#  Prefix Verb   URI Pattern                                    Controller#Action
#                 root GET    /                                              welcome#index
#                      GET    /auth/:provider/callback(.:format)             sessions#create
#         auth_failure GET    /auth/failure(.:format)                        redirect(301, /)
#              signout GET    /signout(.:format)                             sessions#destroy
#             sessions POST   /sessions(.:format)                            sessions#create
#              session DELETE /sessions/:id(.:format)                        sessions#destroy
#              welcome GET    /welcome/:id(.:format)                         welcome#show
#     user_collections GET    /users/:user_id/collections(.:format)          collections#index
#                      POST   /users/:user_id/collections(.:format)          collections#create
#  new_user_collection GET    /users/:user_id/collections/new(.:format)      collections#new
# edit_user_collection GET    /users/:user_id/collections/:id/edit(.:format) collections#edit
#      user_collection GET    /users/:user_id/collections/:id(.:format)      collections#show
#                      PATCH  /users/:user_id/collections/:id(.:format)      collections#update
#                      PUT    /users/:user_id/collections/:id(.:format)      collections#update
#                      DELETE /users/:user_id/collections/:id(.:format)      collections#destroy
#                users GET    /users(.:format)                               users#index
#                      POST   /users(.:format)                               users#create
#             new_user GET    /users/new(.:format)                           users#new
#            edit_user GET    /users/:id/edit(.:format)                      users#edit
#                 user GET    /users/:id(.:format)                           users#show
#                      PATCH  /users/:id(.:format)                           users#update
#                      PUT    /users/:id(.:format)                           users#update
#                      DELETE /users/:id(.:format)                           users#destroy
