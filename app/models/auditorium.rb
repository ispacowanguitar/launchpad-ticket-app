class Auditorium < ActiveRecord::Base
  has_many :showings

  validates :seating_capacity, numericality: { only_integer: true }
end
