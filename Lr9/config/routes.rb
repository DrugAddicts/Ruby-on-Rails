Rails.application.routes.draw do
  get 'lb9/input'

  get 'lb9/view'

  root 'lb9#input'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
