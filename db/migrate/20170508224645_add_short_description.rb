class AddShortDescription < ActiveRecord::Migration
  def change
  	add_column :resources, :shortdescription, :string
  end
end
