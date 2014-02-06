class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :image
      t.references :user, index: true
      t.references :topic, index: true
      t.text :description

      t.timestamps
    end
  end
end
