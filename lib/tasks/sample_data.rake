namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		User.create!(name: "Example User",
								email: "example@tutorial.jp",
								password: "foobar",
								password_confirmation: "foobar",
								admin: true)
		99.times do |n|
			name = Faker::Name.name
			email = "example-#{n+1}@tutorial.jp"
			password = "password"
			User.create!(name: name,
									email: email,
									password: password,
									password_confirmation: password)
		end
	end
end
