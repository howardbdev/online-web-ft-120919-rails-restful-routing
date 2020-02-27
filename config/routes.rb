Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get '/', to: "sushis#home"

  get '/sushis', to: "sushis#index"
  get '/sushis/new', to: "sushis#new"
  get '/sushis/:id', to: "sushis#show", as: "sushi"
  post '/sushis', to: "sushis#create"
  get '/sushis/:id/edit', to: "sushis#edit", as: "edit_sushi"
  patch '/sushis/:id', to: "sushis#update"
  delete '/sushis/:id', to: "sushis#destroy"

  # MUST BE AT THE BOTTOM!!!!
  get '/:anything', to: "application#wrong_page"
end
