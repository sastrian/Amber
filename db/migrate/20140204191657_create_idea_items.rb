class CreateIdeaItems < ActiveRecord::Migration
  def change
    create_table :idea_items do |t|
      t.integer :rank
      t.references :idea, index: true
      t.string :title

      t.timestamps
    end
  end
end
