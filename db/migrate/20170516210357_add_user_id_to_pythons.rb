class AddUserIdToPythons < ActiveRecord::Migration
  def change
  	 add_column :pythons, :user_id, :integer
  end
end
