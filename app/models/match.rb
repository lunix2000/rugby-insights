class Match < ApplicationRecord
  validates :home_team, :away_team, presence: true

  validates :home_score, :away_score,
            :possession,
            :tackles_made,
            :tackles_missed,
            :penalties,
            presence: true,
            numericality: { greater_than_or_equal_to: 0 }

  validates :possession, numericality: { less_than_or_equal_to: 100 }
end
