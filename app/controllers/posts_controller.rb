class PostsController < ApplicationController

    def new
      @post = Post.new
    end

    def index
      @q = Post.ransack(params[:q])
      @posts = @q.result(distinic: true)
    end

    def show
      @post = Post.find(params[:id])
      @post_comment = PostComment.new
    end

    def create
      post = Post.new(post_params)
      post.user_id = current_user.id
      if post.save
        redirect_to posts_path
      else
        render new_post_path
      end
    end

    def edit
      @post = Post.find(params[:id])
    end

    def update
      post = Post.find(params[:id])
      if post.update(post_params)
        redirect_to posts_path
      else
        render edit_post_path(post.id)
      end
    end

    def destroy
      @post = Post.find(params[:id])
      @post.destroy
      redirect_to posts_path

    end

    private
    def post_params
        params.require(:post).permit(:caption,:post_image)
    end

end
