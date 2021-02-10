class CreateCollateralsTags < ActiveRecord::Migration[6.0]
  def change
    create_table :collaterals_tags do |t|
      t.references :collateral, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true
      t.integer :weight

      t.timestamps
    end
  end
end
