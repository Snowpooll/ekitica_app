class StaticPagesController < ApplicationController
  def home
    if current_user
      @micropost = current_user.microposts.build if current_user
      @feed_items = current_user.feed_items.includes(:user).order(created_at: :desc).page(params[:page])
    end
  end
end
