class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  # validates :guest_rating, :guest, :episode presence: true
  validates :guest_rating, numericality: { greater_than: 0, less_than: 6 }

end
