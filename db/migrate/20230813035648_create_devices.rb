class CreateDevices < ActiveRecord::Migration[7.0]
  def change
    create_table :devices do |t|
      t.string :type, null: false
      t.references :house, null: false, foreign_key: true
      t.jsonb :modbus, null: false

      t.timestamps
    end
  end
end
