Carveniche::Application.routes.draw do
  root :to=>"grades#index"
  resources :grades, :only=>[:index] do 
    resource :marksheet
  end
end