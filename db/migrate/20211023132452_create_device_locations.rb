class CreateDeviceLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :device_locations do |t|
      t.integer :device_imei_no, index: true, foreign_key: true
      t.datetime :location_at, null: false
      t.decimal :latitude, null: false
      t.decimal :longitude, null: false
      t.string  :address
    end
  end
end
