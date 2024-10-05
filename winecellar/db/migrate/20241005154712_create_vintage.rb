class CreateVintage < ActiveRecord::Migration[7.2]
  def change
    create_table :vintages do |t|
      t.timestamps
      t.references :wine, null: false, foreign_key: true
      t.float :abv
      t.float :price
      t.text :foodparing
    end
  end
end