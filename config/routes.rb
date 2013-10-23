ExpressionApp::Application.routes.draw do


  root to: 'gal4_lines#main'

  resources :users #do
  #   resources :collections
  # end

  resources :gal4_lines


  get '/login'  => "session#new"
  post '/login' => "session#create"
  get '/logout' => "session#destroy"
  get '/results'      => "gal4_lines#index"
  get '/results/:id'  => "gal4_lines#show"
  get '/dashboard'    => "users#show"


end
#== Route Map
# Generated on 23 Oct 2013 18:08
#
#          users GET    /users(.:format)               users#index
#                POST   /users(.:format)               users#create
#       new_user GET    /users/new(.:format)           users#new
#      edit_user GET    /users/:id/edit(.:format)      users#edit
#           user GET    /users/:id(.:format)           users#show
#                PUT    /users/:id(.:format)           users#update
#                DELETE /users/:id(.:format)           users#destroy
#     gal4_lines GET    /gal4_lines(.:format)          gal4_lines#index
#                POST   /gal4_lines(.:format)          gal4_lines#create
#  new_gal4_line GET    /gal4_lines/new(.:format)      gal4_lines#new
# edit_gal4_line GET    /gal4_lines/:id/edit(.:format) gal4_lines#edit
#      gal4_line GET    /gal4_lines/:id(.:format)      gal4_lines#show
#                PUT    /gal4_lines/:id(.:format)      gal4_lines#update
#                DELETE /gal4_lines/:id(.:format)      gal4_lines#destroy
#          login GET    /login(.:format)               session#new
#                POST   /login(.:format)               session#create
#         logout GET    /logout(.:format)              session#destroy
#        results GET    /results(.:format)             gal4_lines#index
#                GET    /results/:id(.:format)         gal4_lines#show
#      dashboard GET    /dashboard(.:format)           users#show
