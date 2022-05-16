class PostsController < ApplicationController

  def index
    @posts = @posts = Post.order(id: "DESC")
  end

  # def new
  # end

  def create
    post = Post.create(content: params[:content])
    render json:{ post: post}
  end
end
