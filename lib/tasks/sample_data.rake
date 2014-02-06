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
	  
	  users.each do |user|
		idea.rate(rand(1..5), user, "sustainability")
		idea.rate(rand(1..5), user, "price")
		idea.rate(rand(1..5), user, "easy")
	  end
	  
	  (rand(3..10)).times do |n|
	    name = Faker::Company.bs
		IdeaItem.create!(title: name, rank: n, idea: idea)
	  end
    end
	    
	ideas = Idea.all
	10.times do
	 description = Faker::Lorem.sentences(rand(100..200)).to_sentence()
	  title = Faker::Company.name()
      project = Project.create!(title: title, description: description, topic: topics.sample(1).first, user: users.sample(1).first)
	  
	  users.each do |user|		
		project.rate(rand(1..5), user, "sustainability")
		project.rate(rand(1..5), user, "price")
		project.rate(rand(1..5), user, "easy")
	  end
	  
	  (rand(3..10)).times do |n|
	    title = Faker::Company.bs
		ProjectTask.create!(title: title, prio: n, project: project)
	  end
	  (rand(0..5)).times do |n|
	    IdeasInProject.create!(project: project, idea: ideas.sample(1).first)
	  end
	end
  end
end