Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  get 'rooms/show'

end
