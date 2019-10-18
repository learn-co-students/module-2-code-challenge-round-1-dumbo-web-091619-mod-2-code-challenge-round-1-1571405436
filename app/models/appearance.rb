class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode
  validates :rating, presence: true, inclusion: { in: (0..5).to_a, message: "input is not a valid size" }

end
