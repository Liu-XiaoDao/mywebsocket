class RoomsController < ApplicationController
  def show
    @messages = Message.all
  end

  def index
    Message.create content: "signin"
  end
end
