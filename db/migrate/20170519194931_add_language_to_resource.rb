class AddLanguageToResource < ActiveRecord::Migration
  def change
  	add_column :resources, :language, :string
  end
end
