class TopPagesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :edit, :update, :destroy]
  def home
    if user_signed_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed_items.includes(:user).order(created_at: :desc)
    end
  end
end
