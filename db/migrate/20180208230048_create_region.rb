class CreateRegion < ActiveRecord::Migration[5.1]
  def change
    create_table :regions do |t|
      t.string :name
    end
  end
end
