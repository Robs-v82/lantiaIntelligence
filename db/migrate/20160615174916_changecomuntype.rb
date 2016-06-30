class Changecomuntype < ActiveRecord::Migration
  	def change
		change_column :events, :deaths, 'integer USING CAST(deaths AS integer)'  
	end
end
