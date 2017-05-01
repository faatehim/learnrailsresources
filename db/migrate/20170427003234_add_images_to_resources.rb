class AddImagesToResources < ActiveRecord::Migration
  def change
    add_column :resources, :image, :string
  end
end
