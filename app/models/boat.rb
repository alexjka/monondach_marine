class Boat < ApplicationRecord
  validates :boat_year, presence: true, inclusion: { in: 1850..Date.today.year, message: 'is not valid' }
  validates :boat_make, presence: true
  validates :boat_model, presence: true
  validates :engine_year, presence: true, inclusion: { in: 1850..Date.today.year, message: 'is not valid' }
  validates :engine_make, presence: true
  validates :engine_model, presence: true
  validates :length, presence: true
  validates :photo, presence: true
end
