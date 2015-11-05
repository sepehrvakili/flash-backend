class CardsController < ApplicationController

	before_action :authenticate_user!, except: [:index, :show]

	def create

		user = current_user
		deck = Deck.find_by(user_id: user.id)

		if deck.user_id != user.id
			render json: { error: "User #{user.username} does not have access to deck #{deck.title}." }, 
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

	end

	def update

	end

	def destroy

	end


end
