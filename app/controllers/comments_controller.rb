class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update]

  def edit
  end

  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment.card.board, notice: 'Board was successfully created.' }
      else
        format.html { render :edit }
      end
    end
  end

  private

  def set_comment
    @comment = Comment.find(params['id'])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
