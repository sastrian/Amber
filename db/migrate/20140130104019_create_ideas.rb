class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :name, :null => false
      t.string :image
      t.text :description, :null => false
      t.integer :user_id, :null => false
      t.integer :topic_id, :null => false

      t.timestamps
    end
  end
end
