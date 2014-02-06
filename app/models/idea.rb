class Idea < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  has_many :idea_items, dependent: :destroy
  has_many :ideas_in_projects
  has_many :projects, through: :ideas_in_projects
  
  letsrate_rateable "sustainability", "price", "easy"
end
