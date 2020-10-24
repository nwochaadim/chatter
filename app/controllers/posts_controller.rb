class PostsController < ApplicationController

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def create
    Post.create(post_params)
    redirect_to posts_path
  end

  private

  def post_params
    params.permit(:body)
  end
end
