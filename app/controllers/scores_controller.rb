class ScoresController < ApplicationController
  def new
    if request.path_info == session[:ref]
      session[:ref] = request.path_info

      # 通常時の処理
      @user = current_user
      @score = Score.new(play_params)
    else
      # リロード時の処理
      redirect_to courses_path
    end
  end

  def create
    @score = Score.new(scores_params)
    @score.user_id = current_user.id
    if @score.save
      redirect_to result_path(@score)
    else
      redirect_to courses_path, notice: "保存に失敗しました"
    end
  end

  def destroy
    @score = Score.find(params[:id])
    @score.destroy
    redirect_to user_path(@score.user.id)
  end

  def result
    @user = current_user
    @score = Score.find(params[:id])
    @total = @score.total
  end

  private

  def scores_params
    params.require(:score).permit(:course_id, :hole1, :hole2, :hole3, :hole4, :hole5, :hole6, :hole7, :hole8, :hole9, :hole10, :hole11, :hole12, :hole13, :hole14, :hole15, :hole16, :hole17, :hole18, :played_date)
  end

  def play_params
    if params[:score].blank?
      redirect_to courses_path
      return
    end
    params.require(:score).permit(:course_id, :played_date)
  end
end
