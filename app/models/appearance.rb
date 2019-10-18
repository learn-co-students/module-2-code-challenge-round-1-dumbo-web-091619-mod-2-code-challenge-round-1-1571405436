class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates :rating, inclusion: { in: [1, 2, 3, 4, 5]  }
  validates :guest_id, inclusion: { in: Guest.pluck(:id) }
  validates :episode_id, inclusion: { in: Episode.pluck(:id) }
end
