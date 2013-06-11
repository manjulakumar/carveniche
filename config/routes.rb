Carveniche::Application.routes.draw do
  root :to=>"marksheets#index"
  resources :grades, :only=>[:index] do 
    resource :marksheet
  end
end