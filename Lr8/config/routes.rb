Rails.application.routes.draw do
  get 'lb8/enter'

  get 'lb8/result'

  root 'lb8#enter'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
