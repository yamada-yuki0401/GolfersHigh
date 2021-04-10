class MessergesController < ApplicationController
  def index
    @messerges = Messerge.all
    @user = current_user
    @like = Like.new
    @messerge = Messerge.new
  end

  def create
    @messerge = Messerge.new(messerge_params)
    @messerge.user_id = current_user.id
    @messerge.save
    redirect_to messerges_path
  end

  def destroy
    @messerge = Messerge.find(params[:id])
    @messerge.destroy
    redirect_to messerges_path
  end

  private
  def messerge_params
    params.require(:messerge).permit(:user, :comment, :video, :image)
  end
end
