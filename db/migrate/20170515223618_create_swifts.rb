class CreateSwifts < ActiveRecord::Migration
  def change
    create_table :swifts do |t|
      t.string :title
      t.string :url
      t.string :description
      t.string :tag
      t.string :shortdescription

      t.timestamps null: false
    end
  end
end
