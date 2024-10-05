class CreateLocation < ActiveRecord::Migration[7.2]
  def change
    create_table :locations do |t|
      t.timestamps
      t.text :country
      t.text :region
      t.text :village
    end
  end
end