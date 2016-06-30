class Splitcolumns < ActiveRecord::Migration
  def change
  	remove_column :events, :killing_locationcorpse_location
  	add_column :events, :killing_location, :string
  	add_column :events, :corpse_location, :string
  end
end
