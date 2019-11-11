class CreateRounds < ActiveRecord::Migration[5.2]
  def change
    create_table :rounds do |t|
      t.references :game, foreign_key: true
      t.references :player_1_movement, index: true, foreign_key: {to_table: :movements}
      t.references :player_2_movement, index: true, foreign_key: {to_table: :movements}
      t.timestamps
    end
  end
end
