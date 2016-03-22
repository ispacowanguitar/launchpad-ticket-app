class Showing < ActiveRecord::Base
  belongs_to :movie
  belongs_to :auditorium

  has_many :users, through: :tickets
  has_many :tickets

  # validates :start_time :if => :other_movie_overlap?

  def remaining_seats
    auditorium.seating_capacity - tickets.count
  end
end
