class LikesController < ApplicationController
  def create
    @user = current_user
    @messerge = Messerge.find(params[:messerge_id])
    @like = Like.create(user_id: @user.id, messerge_id: @messerge.id)
  end

  def destroy
    @user = current_user
    @messerge = Messerge.find(params[:messerge_id])
    @like = Like.find_by(user_id: @user.id, messerge_id: @messerge.id)
    @like.delete
  end
end
