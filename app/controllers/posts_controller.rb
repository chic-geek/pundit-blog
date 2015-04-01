class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @posts = Post.all
    authorize @posts
    respond_with(@posts)
  end

  def show
    respond_with(@post)
  end

  def new
    @post = Post.new
    authorize @post
    respond_with(@post)
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    authorize @post
    @post.save
    respond_with(@post)
  end

  def update
    @post.update(post_params)
    respond_with(@post)
  end

  def destroy
    @post.destroy
    respond_with(@post)
  end

  private
    def set_post
      @post = Post.find(params[:id])
      authorize @post
    end

    def post_params
      params.require(:post).permit(:user_id, :title, :body)
    end
end
