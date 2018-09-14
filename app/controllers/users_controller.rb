class UsersController < ApplicationController
  # before_action :authenticate_user!, only: [:index]
  def index
    @articles = Article.all.order("created_at DESC")
    if user_signed_in?
      gon.current_id = current_user.id
    end
  end
end
