class CreateDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :devices, {id:  false} do |t|

      t.string :imei_no, index: true, primary_key: true
      t.string :serial_no, null: false
      t.string :make, null: false
      t.string :model, null: false

      t.timestamps
    end
  end
end
