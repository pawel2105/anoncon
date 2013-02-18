Anoncon::Application.routes.draw do

	# Confessions
  get '/confessions' => "confessions#index"
  post '/confessions' => "confessions#create"

  # API
  get '/api' => "api#new"
  
end
