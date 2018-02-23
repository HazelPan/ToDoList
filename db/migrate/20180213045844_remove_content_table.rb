class RemoveContentTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :contents, :title
    remove_column :contents, :duedate
    remove_column :contents, :description
    remove_column :contents, :note
    remove_column :contents, :file_location
  end
end
