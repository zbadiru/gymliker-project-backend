class CardsController < ApplicationController
  before_action :set_card, only: [:show, :update, :destroy]  

  def index
    @cards = Card.all
    render json: @cards, include: :comments  
  end

  def show
    render json: @card
  end

  def new

  end

  def create
    @card = Card.new(card_params)

    if @card.save
      render json: @card, status: :created, location:@card
    else
      render json: @card.errors, status: :unprocessable_entity
    end
  end

  def update
    if @card.update(card_params)
      render json: @card
    else
      render json: @card.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @card = @card.destroy
    render json: @card
  end


  private 

  def set_card
    @card = Card.find(params[:id])
  end

  def card_params
    params.require(:card).permit(:likes, :comment_id, :image)
  end
end
