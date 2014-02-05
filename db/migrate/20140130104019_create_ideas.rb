class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :name, :null => false
      t.string :image
      t.text :description, :null => false
      t.integer :user_id, :null => false
      t.integer :topic_id, :null => false

      t.timestamps
	  
	  Topic.create!(name: "Energy", description: Faker::Company.catch_phrase())
	  Topic.create!(name: "Living", description: Faker::Company.catch_phrase())
	  Topic.create!(name: "Health", description: Faker::Company.catch_phrase())
	  Topic.create!(name: "Food", description: Faker::Company.catch_phrase())
	  Topic.create!(name: "Money", description: Faker::Company.catch_phrase())
	  Topic.create!(name: "Garden", description: Faker::Company.catch_phrase())
	  Topic.create!(name: "Remedies", description: Faker::Company.catch_phrase())
    end
  end
end
