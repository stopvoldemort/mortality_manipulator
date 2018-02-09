class CreateCounty < ActiveRecord::Migration[5.1]
  def change
    create_table :counties do |t|
      t.string :name
      t.integer :state_id
    end
  end
end
