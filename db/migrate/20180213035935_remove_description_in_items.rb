class RemoveDescriptionInItems < ActiveRecord::Migration[5.1]
  def change
    remove_column :items, :description
  end
end
