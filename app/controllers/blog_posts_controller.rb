class BlogPostsController < ApplicationController
  def index
    @posts = BlogPost.all
  end

  def show
    @post = BlogPost.find(params[:id])
  end

  def new
    @post = BlogPost.new
  end

  def create
    @post = BlogPost.new(post_params)
    @post.save
    redirect_to @post
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def post_params
    params.require(:blog_post).permit(:titre, :body)
  end

end
