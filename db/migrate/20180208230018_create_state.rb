class CreateState < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|
      t.string :name
      t.integer :region_id
    end
  end
end
