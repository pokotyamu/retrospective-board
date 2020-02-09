class CardsController < ApplicationController
  before_action :set_board, only: [:create]
  before_action :set_card, only: [:edit, :destroy]

  def create
    card = @board.cards.build(card_params)

    respond_to do |format|
      if card.save
        format.html { redirect_to @board, notice: 'Board was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def destroy
    @card.destroy
    respond_to do |format|
      format.html { redirect_to @card.board, notice: 'Board was successfully destroyed.' }
    end
  end

  def update
    respond_to do |format|
      if @card.update(card_params)
        format.html { redirect_to @board, notice: 'Board was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def set_board
    @board = Board.find(params[:board_id])
  end

  def set_card
    @card = Card.find(params[:id])
  end

  def card_params
    params.require(:card).permit(:title, :category, :comment)
  end
end
