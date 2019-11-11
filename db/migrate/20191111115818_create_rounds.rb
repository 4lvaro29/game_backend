class CreateRounds < ActiveRecord::Migration[5.2]
  def change
    create_table :rounds do |t|
      t.integer :player_1_id
      t.integer :player_2_id
      t.integer :player_1_wins
      t.integer :player_2_wins
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
