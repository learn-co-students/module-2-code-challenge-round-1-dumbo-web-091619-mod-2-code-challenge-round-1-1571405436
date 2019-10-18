class Appearance < ApplicationRecord
  belongs_to :episode, required: true
  belongs_to :guest, required: true

  validates :rating, inclusion: { in: (1..5),
    message: "Rating should be between 1-5." }

end
