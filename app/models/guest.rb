class Guest < ApplicationRecord
    has_many :appearances, dependent: :destroy
    has_many :episodes, through: :guests
end
