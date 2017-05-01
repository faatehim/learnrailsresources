class ChangeTypeToTag < ActiveRecord::Migration
  def change
  	rename_column :resources, :type, :tag
  end
end
