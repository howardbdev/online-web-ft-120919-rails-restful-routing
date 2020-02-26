Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get '/', to: "sushis#home"

  get '/sushis', to: "sushis#index"
  get '/sushis/:id', to: "sushis#show", as: "sushi"





  # MUST BE AT THE BOTTOM!!!!
  get '/:anything', to: "application#wrong_page"
end
