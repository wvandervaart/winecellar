class CreateGrape < ActiveRecord::Migration[7.2]
  def change
    create_table :grapes do |t|
      t.timestamps
      t.text :name
      t.integer :type
      t.text :description
    end
  end
end