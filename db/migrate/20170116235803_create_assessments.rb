class CreateAssessments < ActiveRecord::Migration[5.0]
  def change
    create_table :assessments do |t|
      t.references :story, foreign_key: true
      t.boolean :duplicate
      t.string :importance
      t.string :valence
      t.integer :match_value_id
      t.string :match_strength
      t.boolean :value_violation
      t.integer :value_violated_id
      t.text :comments
      t.boolean :restrict_comments

      t.timestamps
    end
  end
end
