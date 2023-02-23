class BlogPostsController < ApplicationController
  def index
    @posts = BlogPost.all
  end

  def show
    @post = BlogPost.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
