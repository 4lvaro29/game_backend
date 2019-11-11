class Game < ApplicationRecord
    has_many :rounds
    validates_presence_of :player_1_name, :player_2_name

end
