class CardsController < ApplicationController

	before_action :authenticate_user!, except: [:index, :show]

	def index

		@cards = Card.where(deck_id: params[:id])
		render "index.json.jbuilder", status: :ok

	end

	def create

		deck = Deck.find(params[:id])

		if deck.user_id != current_user.id
			render json: { error: "User #{current_user.username} does not have access to deck #{deck.title}." }, 
				status: :unauthorized
		else

	    @card = Card.new(
	      question: params[:question],
	      answer: params[:answer],
	      deck_id: deck.id
	      )

	    if @card.save
	      render "create.json.jbuilder", status: :created
	    else
	      render json: { errors: @card.errors.full_messages },
	        status: :unprocessable_entity
	    end

	  end

	end

	def show

		@card = Card.find(params[:id])
		render "show.json.jbuilder", status: :ok

	end

	def update

		@card = Card.find(params[:id])
		deck = Deck.find(@card.deck_id)

		if deck.user_id != current_user.id		
			render json: { error: "User #{current_user.username} does not have access to this card." }, 
				status: :unauthorized
		else
			@card.update(
	      question: params[:question],
	      answer: params[:answer]
	    )
			render "update.json.jbuilder", status: :ok
		end

	end

	def updateall

		@cards = params[:cards]

		deck = Deck.find(params[:id])

		if deck.user_id != current_user.id		
			render json: { error: "User #{current_user.username} does not have access to this card." }, 
				status: :unauthorized
		else
			@cards.each do |card|
				binding.pry
				Card.update(card[:id], question: card[:question], answer: card[:answer])
			end
			render "update.json.jbuilder", status: :ok
		end

	end

	def destroy

		card = Card.find(params[:id])
		deck = Deck.find(card.deck_id)

		if deck.user_id != current_user.id		
			render json: { error: "User #{current_user.username} does not have access to this card." }, 
				status: :unauthorized
		else
			card.destroy
			render json: { "response": "The card with answer #{card.answer} has been deleted." }, 
				status: :ok
		end

	end

end
