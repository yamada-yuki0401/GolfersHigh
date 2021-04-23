class FollowRelationshipsController < ApplicationController
  def create
    following = current_user.follow(params[:id])
    if following.save
      flash[:success] = 'フォローしました'
      redirect_to messerges_path
    else
      redirect_to messerges_path
    end
  end

  def destroy
    following = current_user.unfollow(params[:id])
    if following.destroy
      flash[:success] = 'フォローを解除しました'
      redirect_to messerges_path
    else
      redirect_to messerges_path
    end
  end

  def follower
    @user = current_user
    @users = @user.followers
  end

  def following
    @user = current_user
    @users = @user.followings
  end
end
