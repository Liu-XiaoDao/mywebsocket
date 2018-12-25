Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  get 'rooms/show'
  get 'rooms/index'

end
