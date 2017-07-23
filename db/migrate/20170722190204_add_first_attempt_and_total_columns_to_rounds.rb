class AddFirstAttemptAndTotalColumnsToRounds < ActiveRecord::Migration[5.0]
  def change
    add_column :rounds, :first_attempt, :integer

    add_column :rounds, :total, :integer
  end
end
