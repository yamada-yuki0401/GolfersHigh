class MessergesController < ApplicationController
  def index
    @messerges = Messerge.all
    @user = current_user
  end

  def create
    @messerge = Messerge.new(messerge_params)
    @messerge.user_id = current_user.id
    @messerge.save
    redirect_to messerges_path
  end

  def edit
    @messerge = Messerge.find(params[:id])
    @user = current_user
  end

  def update
  end

  def destroy
    @messerge = Messerge.find(params[:id])
    @messerge.destroy
    redirect_to messerges_path
  end

  private
  def messerge_params
    params.permit(:user, :comment, :video, :image)
  end
end
