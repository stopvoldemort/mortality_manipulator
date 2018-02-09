class RemoveStateFromCountyData < ActiveRecord::Migration[5.1]
  def change
    remove_column :county_data, :state, :string
  end
end
