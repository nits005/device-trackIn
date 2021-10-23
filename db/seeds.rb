# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Device.create!([
    { "make": "Moto", "model": "G40 Fusion", "imei_no": "10959593029", "serial_no": "919VDV456" },
    { "make": "Apple", "model": "iPhone 12 Pro", "imei_no": "11009593029", "serial_no": "364YFY123" }
])

Device.all.each do |d|
    DeviceLocation.create!([
        {device_imei_no: d.imei_no, location_at: Time.now - 15.minute, latitude: 40.755884, longitude: -73.978504, address: '565 5 Ave, Manhattan, New York, NY, USA'},
        {device_imei_no: d.imei_no, location_at: Time.now - 1.hour, latitude: 22.693597, longitude: 75.83001, address: 'No.1079 Sudama Nagar, Inside Smruti Dwar, indore'}
    ])
end
