class Discipline < ApplicationRecord

  # Associations
  has_and_belongs_to_many :classrooms, optional: true
  has_and_belongs_to_many :groups, optional: true
  has_and_belongs_to_many :teachers, optional: true
end
