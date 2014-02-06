class CreateIdeasInProjects < ActiveRecord::Migration
  def change
    create_table :ideas_in_projects do |t|
      t.references :project, index: true
      t.references :idea, index: true

      t.timestamps
    end
  end
end
