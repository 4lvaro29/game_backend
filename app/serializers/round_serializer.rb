class RoundSerializer < ActiveModel::Serializer
    attribute :player_1_id, :player_2_id, :player_1_wins, player_2_wins
end