class AddCountyIdToCountyData < ActiveRecord::Migration[5.1]
  def change
    add_column :county_data, :county_id, :integer
  end
end
