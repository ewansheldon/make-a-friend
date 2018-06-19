Rails.application.routes.draw do
  get '/friends', to: 'make_a_friend/friends#new'
  post '/friends', to: 'make_a_friend/friends#create'
end