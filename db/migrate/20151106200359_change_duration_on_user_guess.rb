class ChangeDurationOnUserGuess < ActiveRecord::Migration
  def change
  	change_column_null :user_guesses, :duration, false
  end
end
