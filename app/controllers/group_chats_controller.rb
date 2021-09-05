class GroupChatsController < ApplicationController

  def new

    @group_chat = GroupChat.new
    @group_chats = GroupChat.all

  end

  def create

    group = Group.find_by(params[:group_id])
    group_chat = GroupChat.new(group_chat_params)
    group_chat.user_id = current_user.id
    group_chat.group_id = group.id
    group_chat.save
    redirect_to request.referer

  end


  def destroy

  end

  private
  def group_chat_params
    params.require(:group_chat).permit(:comment,:image)
  end


end
