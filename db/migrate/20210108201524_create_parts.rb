class CreateParts < ActiveRecord::Migration[6.1]
  def change
    create_table :parts do |t|
      t.string :name
      t.string :supplier_parts_number
      t.string :supplier_quote_number
      t.integer :unit_cost
      t.integer :ads_cost

      t.timestamps
    end
  end
end
