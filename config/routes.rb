Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    get "/people" => "people#index"
    get "/people/:id" => "people#show"


    get "/organizations" => "people#index"
    get "/organizations" => "photos#show"
  end
end
