class AnswersController < ApplicationController
  def create
    @answer = Answer.new(answer_params)
    @answer.user_id = current_user.id
    @answer.messerge_id = params[:messerge_id]
    if @answer.save
      redirect_to messerge_path(@answer.messerge_id)
    else
      redirect_to messerge_path(@answer.messerge_id)
    end

  end

  private
  def answer_params
    params.require(:answer).permit(:content)
  end
end
