class PostController < ApplicationController
  before_action :require_login, only: [ :new, :create ]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
  end

  private

  def require_login
    unless current_user && current_user.logged_in?
      flash[ :danger ] = "Please log in."
      redirect_to root_url
    end
  end
end
