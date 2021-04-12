class AnswersController < ApplicationController
  def create
    @answer = Answer.new(answer_params)
    @answer.user_id = current_user.id
    @answer.messerge_id = params[:messerge_id]
    if @answer.save
      redirect_to root_path
    else
      redirect_to messerges_path
    end

  end

  private
  def answer_params
    params.require(:answer).permit(:content)
  end
end
