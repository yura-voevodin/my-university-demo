class Classroom < ApplicationRecord

  # Field validations
  validates :name, presence: true

  before_validation :add_lowercase_name

  def add_lowercase_name
    self.lowercase_name = name.downcase
  end
end
