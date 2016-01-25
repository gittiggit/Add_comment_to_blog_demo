class CommentsController < ApplicationController

  def create
    @comment = Comment.new comment_params
    @comment.user = current_user
    @comment.article_id = params[:article_id]
    @comment.save
    respond_to do |format|
      format.html {redirect_to :back}
      format.js
    end
  end

  def edit
    
  end

  def update
    
  end

  def destroy

  end

  private
  def comment_params
    # params.require(:comment).permit :content, :article_id
    params.require(:comment).permit :content
  end
end
