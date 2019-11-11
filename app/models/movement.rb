class Movement < ApplicationRecord
  belongs_to :movement
  has_many :player_1_movements, class_name: :Round, foreign_key: :player_1_movement_id
  has_many :player_2_movements, class_name: :Round, foreign_key: :player_2_movement_id
end
