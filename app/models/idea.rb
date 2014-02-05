class Idea < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  has_many :idea_items
end
