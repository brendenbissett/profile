class Topic < ApplicationRecord
	validates_presence_of :title

	# Configure foreign keys
	has_many :blogs
end
