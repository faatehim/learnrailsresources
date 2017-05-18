class DropSwiftandetc < ActiveRecord::Migration
  def change
  	drop_table :htmls
  	drop_table :javascripts
  	drop_table :pythons
  	drop_table :swifts

  end
end
