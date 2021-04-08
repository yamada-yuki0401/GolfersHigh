class HomesController < ApplicationController
  def top
  end

  def about
    @user = current_user
  end
end
