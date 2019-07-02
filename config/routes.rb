Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # create. this will make new data in the db
    post '/contacts' => 'contacts#create'

  #   get "/photos" => "photos#index"
  end
end
