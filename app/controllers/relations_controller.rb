class RelationsController < ApplicationController

  def create

    user = User.find(params[:user_id])
    relation = Relation.new(followed_id: user.id,follower_id: current_user.id)
    relation.save
    redirect_to user_path(user.id)

  end

  def destroy

    user = User.find(params[:user_id])
    relation = Relation.find_by(followed_id: user.id,follower_id: current_user.id)
    relation.destroy
    redirect_to user_path(user.id)

  end

  def followings

     user = User.find(params[:user_id])
     @users = user.followings


  end

  def followers

    user = User.find(params[:user_id])
    @users = user.followers


  end

end
