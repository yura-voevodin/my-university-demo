class Classroom < ApplicationRecord

  extend FriendlyId
  friendly_id :slug_candidates, :use => [:slugged, :simple_i18n]

  # Try building a slug based on the following fields in
  # increasing order of specificity.
  def slug_candidates
    [
      :name,
      [:name, :id]
    ]
  end

  def should_generate_new_friendly_id?
    name_changed?
  end

  # Field validations
  validates :name, presence: true

  before_validation :add_lowercase_name

  def add_lowercase_name
    self.lowercase_name = name.downcase
  end
end
