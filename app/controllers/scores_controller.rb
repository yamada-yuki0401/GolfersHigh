class ScoresController < ApplicationController
  def first_half
    @user = current_user
    @score = Score.new
  end

  def latter_half
    @first_half = Score.new(scores_params)
    @user = current_user
  end

  def create
    @score = Score.new(scores_params)
    @score.user_id = current_user.id
    @score.save
    redirect_to scores_result_path
  end
  def result
    @user = current_user
    
  end

  private
  def scores_params
    params.require(:score).permit(:user, :course, :hole1, :hole2, :hole3, :hole4, :hole5, :hole6, :hole7, :hole8, :hole9, :hole10, :hole11,:hole12, :hole13, :hole14, :hole15, :hole16, :hole17, :hole18)
  end
end
