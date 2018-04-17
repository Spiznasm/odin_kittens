Rails.application.routes.draw do
  get 'kittens/new'

  get 'kittens/create'

  get 'kittens/show'

  get 'kittens/edit'

  get 'kittens/update'

  get 'kittens/index'

  get 'kittens/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
