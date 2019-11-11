class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :player_1_name
      t.string :player_2_name

      t.timestamps
    end
  end
end
