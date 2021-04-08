class UsersController < ApplicationController

# 　def followings
#     @user =User.find(params[:id])
#     @users =@user.followings.page(params[:page]).per(5)
#     render 'show'
#   end
#   def followers
#     @user =User.find(params[:id])
#     @users =@user.followers.page(params[:page]).per(5)
#     render 'show'
#   end

  def index
    @users = User.all
    
  end

  def show
    @user = User.find(params[:id])
    
  end

  def new
    @user = User.new
  end

  def edit
  end



  private
    def user_params
      params.require(:user).permit(:name, :email, :introduction, :password)
    end
end