namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    password  = "password"
    User.create!(name: "Maro Bader",
                 email: "maro.bader@gmail.com",
                 password: password,
                 password_confirmation: password)
    4.times do |n|
      name  = Faker::Name.name()
      email = Faker::Internet.email(name)      
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
	end
	
	Topic.create(name: "Energy", description: Faker::Company.catch_phrase())
	Topic.create(name: "Food", description: Faker::Company.catch_phrase())
	Topic.create(name: "Living", description: Faker::Company.catch_phrase())
	Topic.create(name: "Health", description: Faker::Company.catch_phrase())
	Topic.create(name: "Garden", description: Faker::Company.catch_phrase())
	Topic.create(name: "Remedy", description: Faker::Company.catch_phrase())
	Topic.create(name: "Money", description: Faker::Company.catch_phrase())
	
	topics = Topic.all
	users = User.all
    20.times do
      description = Faker::Lorem.sentences(rand(10..20)).to_sentence()
	  name = Faker::Company.name()
      idea = Idea.create!(name: name, description: description, topic: topics.sample(1).first, user: users.sample(1).first)
	  (rand(3..10)).times do |n|
	  name = Faker::Company.bs
		IdeaItem.create!(title: name, rank: n, idea: idea)
		end
    end
	    
  end
end