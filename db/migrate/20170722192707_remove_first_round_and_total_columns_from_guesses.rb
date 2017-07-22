class RemoveFirstRoundAndTotalColumnsFromGuesses < ActiveRecord::Migration[5.0]
  def change
    remove_column :guesses, :first_round, :integer
    remove_column :guesses, :total, :integer
  end
end
