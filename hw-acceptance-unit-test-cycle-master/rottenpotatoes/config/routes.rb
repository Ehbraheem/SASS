Rottenpotatoes::Application.routes.draw do
  resources :movies
  # get '/same_director' => 'movies#same_director'
  # get ':movies(/:same_director(/:director))'
  # map '/' to be a redirect to '/movies'
  root :to => 'movies#index'
  match 'director/', to: 'movies#same_director', via: :all
  
end
