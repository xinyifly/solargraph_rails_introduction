class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.string :name, null: false

      t.timestamps
    end
    add_index :houses, :name, unique: true
  end
end
