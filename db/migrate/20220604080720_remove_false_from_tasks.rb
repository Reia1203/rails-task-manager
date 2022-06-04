class RemoveFalseFromTasks < ActiveRecord::Migration[6.1]
  def change
    remove_column :tasks, :false, :boolean
  end
end
