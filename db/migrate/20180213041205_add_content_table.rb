class AddContentTable < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
      t.string :title
      t.date :duedate
      t.text :description
      t.text :note
      t.string :file_location
      t.timestamps 
    end
  end
end
