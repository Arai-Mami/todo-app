class CreateProgresses < ActiveRecord::Migration[6.0]
  def change
    create_table :progresses do |t|
      t.text :text, null: false
      t.integer :user_id, foreign_key: true
      t.integer :task_id, foreign_key: true
      t.timestamps
    end
  end
end
