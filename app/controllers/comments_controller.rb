class CommentsController < ApplicationController
  before_action :find_post, only: [:create, :destroy]

  def create
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def destroy
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  private
    
    def comment_params
      params.require(:comment).permit(:author, :content, :post_id)
    end

    def find_post 
      @post = Post.find(params[:post_id])
    end

    def find_or_initilize_by

    end
end
