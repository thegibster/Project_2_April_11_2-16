class PostsController < ApplicationController
  def create
    @post = Post.new(post_params) do |post|
      post.user = current_user
    end
    if @post.save
      redirect_to root_path
    else
      redirect_to root_path, notice: @post.errors.full_messages.first
    end
  end

  def update
  end

  def new
    @post =Post.new
  end

  def show
  end
end
