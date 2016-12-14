class Chronic < ApplicationRecord
  belongs_to :patient

  validates :discomfort_score, presence: true


end
