class Item < ApplicationRecord
  mount_uploader :file_location, ItemImageUploader
  #validates_presence_of :title, :duedate, :description
end
