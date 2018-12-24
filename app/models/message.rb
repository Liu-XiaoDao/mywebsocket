class Message < ApplicationRecord
  after_create :message

  def message
    ActionCable.server.broadcast 'some_channel', message: render_message()
  end

  def render_message
    ApplicationController.renderer.render(partial: 'messages/message', locals: { message: self })
  end
end
