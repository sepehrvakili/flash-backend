class DecksController < ApplicationController

before_action :authenticate_user!, except: [:index, :show]
  
 def create

    @deck = Deck.new(title: params[:title],
	user_id: current_user.id)

    	if @deck.save
    		render "create.json.jbuilder", status: :created
    	else
    		render json: { errors: @deck.errors.full_messages },
    		status: :unprocessable_entity
  		end
  	end

  def index
    @decks = current_user.decks
  	# @decks = Deck.where(user_id: current_user.id)
  	render "index.json.jbuilder", status: :ok
  end

  def show
    @deck = Deck.find(params[:id])
    render "show.json.jbuilder", status: :ok
  end

  def update
  	@deck = Deck.find(params[:id])
  	@deck.update(title: params[:title])
  	render "update.json.jbuilder", status: :ok
  end

  def destroy
    deck = Deck.find(params[:id])
	    if current_user.id == deck.user_id
	      # flash[:notice] = "Delete this Deck: #{deck.title}"
	      deck.destroy
	      render json: { "response": "The deck has been deleted." }, status: :ok
	    else
        render json: { error: "User #{current_user.username} does not have access to this deck." }, 
                status: :unauthorized	   
     end
  end
end
