class Portfolio < ApplicationRecord

	has_many :technologies

	validates_presence_of :title, :body, :main_image, :thumb_image

	# Define a class method(s)
	def self.Angular
		where(subtitle: "Angular")
	end

	scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails") }

	# Set up defaults (Using callback)
	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
		self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
	end
end
