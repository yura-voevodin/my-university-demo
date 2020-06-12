class Record < ApplicationRecord

  # Associations
  belongs_to :classroom, optional: true
  belongs_to :teacher, optional: true
  belongs_to :discipline, optional: true
  belongs_to :pair, optional: true

  has_and_belongs_to_many :groups, optional: true
end
