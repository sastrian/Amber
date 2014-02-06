class Project < ActiveRecord::Base
  belongs_to :user
  belongs_to :topic
  has_many :project_tasks, dependent: :destroy
  has_many :ideas_in_projects
  has_many :ideas, through: :ideas_in_projects

  letsrate_rateable "sustainability", "price", "easy"
end
