class RemoveStateIdAndNameFromCountyData < ActiveRecord::Migration[5.1]
  def change
    remove_column :county_data, :state_id, :integer
    remove_column :county_data, :name, :string
  end
end
