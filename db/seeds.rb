# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Generate topics items
Topic.create!(title: "Ruby")
Topic.create!(title: "Personal")
Topic.create!(title: "Agile")

# Generate blog posts
10.times do |blog|

	Blog.create!(
		title: "My blog post #{blog}",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
	)

end


# Generate skills
5.times do |skill|

	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15,
		category: "none"
	)

end

# Generate portfolio items
9.times do |portfolio_item|

	Portfolio.create!(
		title: "Portfolio title #{portfolio_item}",
		subtitle: "My great service",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
		main_image: "https://via.placeholder.com/600x400",
		thumb_image: "https://via.placeholder.com/350x200",

	)

end

