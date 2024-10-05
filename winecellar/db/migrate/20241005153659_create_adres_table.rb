class CreateAdresTable < ActiveRecord::Migration[7.2]
  def change
    create_table :addresses do |t|
      t.text :street
      t.integer :number
      t.text :zipcode
      t.text :city
      t.text :land
      t.timestamps
    end
  end
end