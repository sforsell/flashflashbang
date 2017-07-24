class AddRoundColumnToGuesses < ActiveRecord::Migration[5.0]
  def change
    add_column :guesses, :round_id, :integer
  end
end
