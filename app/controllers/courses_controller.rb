class CoursesController < ApplicationController
  def index
    @user = current_user
    @course = Course.search(params[:keyword])
    # @courses = params[:search] ? Course.search(search: params[:search]) : []
    @score = Score.new
  end
end
