class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :title
      t.date :due_date
      t.text :description
      t.text :note
      t.string :file_location
      t.timestamps 
    end
  end
end
