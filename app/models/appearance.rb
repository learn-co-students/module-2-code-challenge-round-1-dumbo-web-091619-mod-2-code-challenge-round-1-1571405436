class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest
  validates :rating, presence: true
  validates :episode_id, presence: true
  validates :guest_id, presence: true
end
