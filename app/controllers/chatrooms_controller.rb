class ChatroomsController < ApplicationController

  def create
    if (Chatroom.where(user_id: current_user.id).find_by invited: params[:chatroom][:invited]).nil? && (Chatroom.where(user_id: User.where(email: params[:chatroom][:invited])).find_by invited: current_user.email).nil?
      @chatroom = Chatroom.create(name: "#{current_user.full_name}", user_id: current_user.id, invited: params[:chatroom][:invited])
      if @chatroom.save
        redirect_to chatroom_path(@chatroom)
      else
        render delegates_path
      end
    else
      chatroom_location
    end
  end

  def show
    if current_user.email == 'joa.azria@gmail.com'
      @chatroom = Chatroom.where(user_id: params[:id]).find_by invited: current_user.email
      if @chatroom.nil?
        @chatroom = Chatroom.find(params[:id])
      end
    else
      @chatroom = Chatroom.where(user_id: params[:id]).find_by invited: 'joa.azria@gmail.com'
      if @chatroom.nil?
        @chatroom = Chatroom.find(params[:id])
      end
    end
    unless @chatroom.user_id == current_user.id || @chatroom.invited == current_user.email
      redirect_to root_path, notice: 'Unauthorized Area'
    end
    @message = Message.new
    #  teste
  end

  private

  def chatroom_location
    if (Chatroom.where(user_id: current_user.id).find_by invited: params[:chatroom][:invited]).nil?
      @chatroom = Chatroom.where(user_id: User.where(email: params[:chatroom][:invited])).find_by invited: current_user.email
      redirect_to chatroom_path(@chatroom)
    else
      @chatroom = Chatroom.where(user_id: current_user.id).find_by invited: params[:chatroom][:invited]
      redirect_to chatroom_path(@chatroom)
    end
  end
end
