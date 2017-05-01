class DeletePaperclipStuff < ActiveRecord::Migration
  def change
     remove_column :resources, :image_file_name
     remove_column :resources, :image_content_type
     remove_column :resources, :image_file_size
     remove_column :resources, :image_updated_at

  end
end
