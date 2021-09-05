class GroupsController < ApplicationController

  def new
    @group = Group.new
  end

  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
    @group_users = GroupUser.where(group_id: @group.id)
    @group_user = GroupUser.new
  end

  def create
    group = Group.new(group_params)
    group.save
    redirect_to group_path(group.id)
  end

  def edit
    @group = Group.find(params[:id])
  end

  def updatr
    group = Group.update(group_params)
    redirect_to group_path(group.id)
  end

  def destroy
    group = Group.find(params[:id])
    group.destroy
  end


  def join
    group = Group.find(params[:id])
    group_user = GroupUser.new(user_id: current_user.id,group_id: group.id)
    group_user.save
    redirect_to request.referer
  end

  def out
    group = Group.find(params[:id])
    group_user = GroupUser.find_by(user_id: current_user.id,group_id: group.id)
    group_user.destroy
    redirect_to request.referer
  end

  private

  def group_params
    params.require(:group).permit(:name,:icon_image,:caption)
  end

end
