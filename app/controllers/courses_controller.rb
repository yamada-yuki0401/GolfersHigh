class CoursesController < ApplicationController
  def index
    @user = current_user
    @course = Course.search(params[:search])
    # @courses = params[:keyword] ? Course.search(keyword: params[:keyword]) : []
    @score = Score.new
  end
end
