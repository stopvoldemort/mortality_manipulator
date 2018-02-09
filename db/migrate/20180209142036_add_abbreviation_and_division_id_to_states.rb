class AddAbbreviationAndDivisionIdToStates < ActiveRecord::Migration[5.1]
  def change
    add_column :states, :abbreviation, :string
    add_column :states, :division_id, :integer
  end
end
