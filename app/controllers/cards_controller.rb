class CardsController < ApplicationController
  before_action :set_board, only: [:create]
  before_action :set_card, only: [:destroy]

  def create
    card = @board.cards.build(card_params)

    respond_to do |format|
      if card.save
        format.html { redirect_to @board, notice: 'Board was successfully created.' }
        format.json { render :show, status: :created, location: @card }
      else
        format.html { render :new }
        format.json { render json: card.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def destroy
    @card.destroy
    respond_to do |format|
      format.html { redirect_to @card.board, notice: 'Board was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def update
    if @card.update(card_params)
      format.html { redirect_to @board, notice: 'Board was successfully created.' }
      format.json { render :show, status: :created, location: @card }
    else
      format.html { render :new }
      format.json { render json: @card.errors, status: :unprocessable_entity }
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
