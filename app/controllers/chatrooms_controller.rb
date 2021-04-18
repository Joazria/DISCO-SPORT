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
    # @chatroom = Chatroom.find(params[:id])
    # user = User.find(params[:id])
    if current_user.email == 'dwftung@gmail.com'
      @chatroom = Chatroom.where(user_id: params[:id]).find_by invited: current_user.email
      if @chatroom.nil?
        @chatroom = Chatroom.find(params[:id])
      end
    else
      @chatroom = Chatroom.where(user_id: params[:id]).find_by invited: 'dwftung@gmail.com'
      if @chatroom.nil?
        @chatroom = Chatroom.find(params[:id])
      end
    end
    unless @chatroom.user_id == current_user.id || @chatroom.invited == current_user.email
      redirect_to root_path, notice: 'Unauthorized Area'
    end
    @message = Message.new
  end
end
