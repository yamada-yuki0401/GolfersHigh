class ScoresController < ApplicationController
  def new
    @user = current_user
    @score = Score.new(scores_params)
    p @score
  end

  def create
    @score = Score.new(scores_params)
    @score.user_id = current_user.id
     binding.pry
   if  @score.save
    redirect_to scores_result_path(@score)
   else
     redirect_to courses_path
   end
  end
  def result
    @user = current_user

  end

  private
  def scores_params
    params.require(:score).permit(:user_id, :course_id, :hole1, :hole2, :hole3, :hole4, :hole5, :hole6, :hole7, :hole8, :hole9, :hole10, :hole11,:hole12, :hole13, :hole14, :hole15, :hole16, :hole17, :hole18, :played_date)
  end
end
