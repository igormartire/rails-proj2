class AddAvailableToItem < ActiveRecord::Migration
  def change
    add_column :items, :available, :boolean
  end
end
