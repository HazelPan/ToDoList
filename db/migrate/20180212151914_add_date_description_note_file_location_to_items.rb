class AddDateDescriptionNoteFileLocationToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :due_date, :date
    add_column :items, :description, :text
    add_column :items, :note, :text
    add_column :items, :file_location, :string
  end
end
