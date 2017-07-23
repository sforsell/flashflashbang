class AddCardIdAndCorrectColumnsToGuesses < ActiveRecord::Migration[5.0]
  def change
    add_column :guesses, :card_id, :integer
    add_column :guesses, :correct?, :integer
  end
end
