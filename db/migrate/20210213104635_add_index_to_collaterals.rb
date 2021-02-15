class AddIndexToCollaterals < ActiveRecord::Migration[6.0]
  def change
    add_index :collaterals, :title, unique: true
    add_index :collaterals_tags, [:collateral_id, :tag_id], unique: true
    add_index :tags, [:category, :name], unique: true
  end
end

