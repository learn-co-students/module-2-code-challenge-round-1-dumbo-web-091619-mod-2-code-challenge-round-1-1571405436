class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest

  validates :raiting, :inclusion => 1..5
end
