class RemoveAssetToTickets < ActiveRecord::Migration
	def change
		remove_column :tickets, :asset
	end
end