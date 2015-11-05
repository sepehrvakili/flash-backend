class DecksController < ApplicationController

before_action :authenticate_user!, except: [:index, :show]
current_user
  
 def create
  	user = current_user

    @deck = Deck.new(title: params[:title],
	user_id: params[:user_id])

    	if @deck.save
    		render "create.json.jbuilder", status: :created
    	else
    		render json: { errors: @deck.errors.full_messages },
    		status: :unprocessable_entity
  		end
  	end

  def show
    @deck = Deck.find(params[:id])
  end

  def update
  	@deck = Deck.find(params[:id])
  	@deck.update(title: params[:title])
  end

  def destroy
    deck = Deck.find(params[:id])
	    if current_user.id == deck.user_id
	      # flash[:notice] = "Delete this Deck: #{deck.title}"
	      deck.destroy
	    else
	      flash[:notice] = "You are not able to delete this Deck."
	    end
  end
end
