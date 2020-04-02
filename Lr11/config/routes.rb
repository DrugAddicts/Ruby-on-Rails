Rails.application.routes.draw do
  root 'lb11#input'

  get 'lb11/input'

  get 'lb11/output'

  get 'lb11/results'

  get '/.' => redirect('lb11/input')

  resources :tables
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
