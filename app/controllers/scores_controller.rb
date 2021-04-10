class ScoresController < ApplicationController
  def new
  end

  def create
  end

  def index
    @user = current_user
    if params[:keyword]
      @items = RakutenWebService::Gora::GolfCourse.search(keyword: params[:keyword])
    end
    @score = Score.search(params[:search])
  end
end
