class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.text :description
      t.string :story_type

      t.timestamps
    end
  end
end
