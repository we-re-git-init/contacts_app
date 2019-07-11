Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # index will show all contacts
    get '/contacts' => 'contacts#index'

    # create. this will make new data in the db
    post '/contacts' => 'contacts#create'

    # update. this will change data currently in the db
    patch '/contacts/:id' => 'contacts#update'
    #   get "/photos" => "photos#index"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"


  end
end
