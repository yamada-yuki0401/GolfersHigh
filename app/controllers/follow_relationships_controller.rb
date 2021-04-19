class FollowRelationshipsController < ApplicationController

 def create
   following = current_user.follow(params[:id])
   if following.save
     flash[:success] = 'ユーザーをフォローしました'
     redirect_to messerges_path
   else
     flash.now[:alert] = 'ユーザーのフォローに失敗しました'
     redirect_to messerges_path
   end
 end
 
 def destroy
   following = current_user.unfollow(params[:id])
   if following.destroy
     flash[:success] = 'ユーザーのフォローを解除しました'
     redirect_to messerges_path
   else
     flash.now[:alert] = 'ユーザーのフォロー解除に失敗しました'
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
