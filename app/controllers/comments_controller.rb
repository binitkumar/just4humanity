class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_comment, only: [:like, :dislike]

  def create
    @comment = Comment.new(comment_params)
    @comment.creator = current_user
    @topic = @comment.topic

    if @comment.save
      redirect_to @comment.topic
    else
      render "topics/show"
    end 
  end

  def like
    @comment.upvote_by current_user
    redirect_to :back
  end  

  def dislike
    @comment.downvote_by current_user
    redirect_to :back
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content, :topic_id)
  end
end
