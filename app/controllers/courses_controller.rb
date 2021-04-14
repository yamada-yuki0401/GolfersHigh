class CoursesController < ApplicationController
  def index
    @user = current_user
    @items = params[:keyword] ? RakutenWebService::Gora::Course.search(keyword: params[:keyword]) : []
  end
end
