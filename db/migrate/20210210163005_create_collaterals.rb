class CreateCollaterals < ActiveRecord::Migration[6.0]
  def change
    create_table :collaterals do |t|
      t.string :title
      t.string :link
      t.string :content_type

      t.timestamps
    end
  end
end
