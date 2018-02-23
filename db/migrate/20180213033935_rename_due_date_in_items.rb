class RenameDueDateInItems < ActiveRecord::Migration[5.1]
  def change
    rename_column :items, :due_date, :duedate
  end
end
