class Appearance < ApplicationRecord

	belongs_to :guest
	belongs_to :episode

	validates :guest_id, :episode_id, presence: :true
	validate :rating_check

private

	def rating_check
		if guest_rating == nil
			errors.add(:guest_rating, "is empty. Please enter a Guest Rating")
		elsif guest_rating < 1 || guest_rating > 5
			errors.add(:guest_rating, "exceeds limits. Please Enter A Rating Between 1 and 5")
		end
	end
end
