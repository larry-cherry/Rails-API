Rails.application.routes.draw do
  get 'resume/json'

  get 'weather/index'
  
  get 'wiki/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
