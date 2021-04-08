class LilesController < ApplicationController
  def create
    @like = current_user.likes.create(messerges_id: params[:messerges_id])
    redirect_to root_path
  end

  def destroy
    @like = Like.find_by(messerges_id: params[:messerges_id], user_id: current_user.id)
    @like.destroy
    redirect_to root_path
  end
end
