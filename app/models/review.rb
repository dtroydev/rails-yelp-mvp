class Review < ApplicationRecord
  RATINGS = (0..5).freeze

  belongs_to :restaurant

  validates :content, presence: true
  validates(:rating,
            presence: true,
            inclusion: { in: RATINGS },
            numericality: true)
end
