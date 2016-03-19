class Showing < ActiveRecord::Base
  belongs_to :movie
  belongs_to :auditorium

  has_many :users, through: :tickets
end
