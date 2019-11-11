class CreateMovements < ActiveRecord::Migration[5.2]
  def change
    create_table :movements do |t|
      t.string :name
      t.references :movement, foreign_key: true

      t.timestamps
    end
  end
end
