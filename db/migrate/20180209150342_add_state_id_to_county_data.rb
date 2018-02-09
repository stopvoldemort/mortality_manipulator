class AddStateIdToCountyData < ActiveRecord::Migration[5.1]
  def change
    add_column :county_data, :state_id, :integer
  end
end
