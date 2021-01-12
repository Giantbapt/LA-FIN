class Portrait < ApplicationRecord
	has_one_attached :picture
	extend FriendlyId
  	friendly_id :titre, use: :slugged
end
