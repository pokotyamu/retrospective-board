class CardsController < ApplicationController
  before_action :set_board, only: [:create]

  def create
    card = @board.cards.build(card_params)

    respond_to do |format|
      if card.save
        format.html { redirect_to @board, notice: 'Board was successfully created.' }
        format.json { render :show, status: :created, location: @board }
      else
        format.html { render :new }
        format.json { render json: @board.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_board
    @board = Board.find(params[:board_id])
  end

  def card_params
    params.require(:card).permit(:title, :category)
  end
end
