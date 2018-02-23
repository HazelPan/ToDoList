class AddMarkToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :mark, :symbol
  end
end
