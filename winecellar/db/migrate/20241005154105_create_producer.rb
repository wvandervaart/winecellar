class CreateProducer < ActiveRecord::Migration[7.2]
  def change
    create_table :producers do |t|
      t.text :name
      t.text :description
      t.references :address, null: false, foreign_key: true
      t.timestamps
    end
  end
end