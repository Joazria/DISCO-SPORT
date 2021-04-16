class ChatroomsController < ApplicationController

  def create
    @chatroom = Chatroom.create(name: "#{current_user.first_name} #{current_user.last_name}", user_id: current_user.id)
    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    else
      render profile_path(current_user.id)
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    unless @chatroom.user_id == current_user.id || current_user.email == 'dwftung@gmail.com'
      redirect_to root_path, notice: 'Unauthorized Area'
    end
  end
end
