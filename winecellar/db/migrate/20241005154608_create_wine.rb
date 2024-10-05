class CreateWine < ActiveRecord::Migration[7.2]
  def change
    create_table :wines do |t|
      t.timestamps
      t.text :name
      t.references :producer, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true
      t.references :grape, null: false, foreign_key: true
    end
  end
end