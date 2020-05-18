class Blog < ApplicationRecord
	enum status: {draft: 0, published: 1}
	extend FriendlyId
	friendly_id :title, use: :slugged

	# Specify required fields
	validates_presence_of :title, :body

	# Configure foreign keys
	belongs_to :topic
end
