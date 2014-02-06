class Topic < ActiveRecord::Base
  has_many :ideas
  has_many :projects
end
