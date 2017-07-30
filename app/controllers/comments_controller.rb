class CommentsController < ApplicationController
  before_filter :authenticate_user!

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

  def comment_params
    params.require(:comment).permit(:content, :topic_id)
  end
end
