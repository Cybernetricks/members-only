class PostController < ApplicationController
  before_action :require_login, only: [:new, :create]

  def index
  end

  def new
    @post = Post.new
  end

  def create
  end

  private

  def require_login
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to root_url
    end
  end
end
