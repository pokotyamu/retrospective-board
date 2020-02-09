class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update, :destroy]
  before_action :set_card, only: [:new, :create]

  def new
    @comment = @card.comments.build
  end

  def create
    comment = @card.comments.build(comment_params)

    respond_to do |format|
      if comment.save
        format.html { redirect_to @card.board, notice: 'Comment was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

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

  def destroy
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to @comment.card.board, notice: 'Board was successfully destroyed.' }
    end
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def set_card
    @card = Card.find(params[:card_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
