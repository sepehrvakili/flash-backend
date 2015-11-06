class UserGuess < ActiveRecord::Base
	belongs_to :user
	belongs_to :card

	validates_presence_of :user_id, :card_id, :duration
	validates :duration, format: { with: /\d/,
		message: "must be a number."
	} 
	validates :correct, :inclusion => {:in => [true, false]}  
end
