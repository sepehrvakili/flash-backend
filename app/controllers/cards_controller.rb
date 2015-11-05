class CardsController < ApplicationController

	before_action :authenticate_user!, except: [:index, :show]

	current_user

	def create

		user = current_user
		deck = Deck.find(params[:id])

    @card = deck.Card.new(
      question: params[:question],
      answer: params[:answer])

    if @card.save
      render "create.json.jbuilder", status: :created
    else
      render json: { errors: @card.errors.full_messages },
        status: :unprocessable_entity
    end

	end

	def show

	end

	def update

	end

	def destroy

	end


end
