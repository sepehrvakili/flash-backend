class ScoresController < ApplicationController

	before_action :authenticate_user!

	def create

		@score = current_user.user_guesses.new(
				:card_id 	=> params[:card_id],
				:duration => params[:score],
				:correct 	=> params[:correct] == "true" ? true : false
			)

		if @score.save
			render "create.json.jbuilder", status: :created
		else
      render json: { errors: @score.errors.full_messages },
        status: :unprocessable_entity
		end	

	end

end