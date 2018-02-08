class CreateCountyData < ActiveRecord::Migration[5.1]
  def change
    create_table :county_data do |t|
      t.string :name
      t.string :state
      t.integer :deaths
      t.integer :population
    end
  end
end
