class Pair < ApplicationRecord

  # Field validations
  validates :start_time, presence: true

  # Associations
  has_many :records
end
