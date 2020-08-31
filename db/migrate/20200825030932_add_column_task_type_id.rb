class AddColumnTaskTypeId < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :task_type_id, :integer
  end
end
