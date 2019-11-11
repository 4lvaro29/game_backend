class Round < ApplicationRecord
  belongs_to :game
  belongs_to :player_1_movement, class_name: :Movement, foreign_key: :player_1_movement_id, optional: true
  belongs_to :player_2_movement, class_name: :Movement, foreign_key: :player_2_movement_id, optional: true
end
