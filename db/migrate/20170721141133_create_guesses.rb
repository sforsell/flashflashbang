class CreateGuesses < ActiveRecord::Migration[5.0]
  def change
    create_table :guesses do |t|
      t.integer :first_round
      t.integer :total

      t.timestamps
    end
  end
end
