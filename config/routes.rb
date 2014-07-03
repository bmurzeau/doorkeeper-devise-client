DoorkeeperDeviseClient::Application.routes.draw do

  match 'explore/:api' => 'api#explore', via: :get, as: :explore_api
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root :to => 'home#index'
end
