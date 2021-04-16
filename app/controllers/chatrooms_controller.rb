class ChatroomsController < ApplicationController

  def create
    @chatroom = Chatroom.create(name: "#{current_user.first_name}")
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
