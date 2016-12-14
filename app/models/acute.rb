class Acute < ApplicationRecord
  belongs_to :patient

  validates :nasal_congestion, presence: true
  validates :nasal_drainage, presence: true
  validates :facial_pain_or_headaches, presence: true
  validates :loss_of_sense_of_smell, presence: true
  validates :duration, presence: true
  validates :better_or_worse, presence: true
  validates :emergency_symptoms, presence: true

end
