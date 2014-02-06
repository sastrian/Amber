class CreateProjectTasks < ActiveRecord::Migration
  def change
    create_table :project_tasks do |t|
      t.string :title
      t.string :state
      t.integer :prio
      t.integer :size
      t.references :project, index: true

      t.timestamps
    end
  end
end
