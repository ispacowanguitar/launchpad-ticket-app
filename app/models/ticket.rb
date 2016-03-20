class Ticket < ActiveRecord::Base
  belongs_to :user
  belongs_to :showing

  validates :name, :email, presence: true
end
