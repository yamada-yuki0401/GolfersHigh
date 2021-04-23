class UsersController < ApplicationController
  def show
    @scores = Score.where(user_id: params[:id])
    minimum = 0
    @scores.each_with_index do |score, index|
      if index == 0
        minimum = score.total
      end
      if minimum > score.total
        minimum = score.total
      end
    end
    @minimum_total = minimum

    @user = User.find(params[:id])
    if current_user != @user
      redirect_to root_path
    end
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path
    else
      render "edit"
    end
  end

  def search
    @user = current_user
    if params[:name].present?
      @users = User.where('name LIKE ?', "%#{params[:name]}%")
    else
      @users = User.none
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :introduction, :password)
  end
end
