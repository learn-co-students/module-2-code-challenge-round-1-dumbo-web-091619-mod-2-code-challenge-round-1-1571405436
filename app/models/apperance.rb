class Apperance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest

  validates :guest_rating, inclusion: { in: 1..5 }
end
