# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(email: 'test@yopmail.com', password: 12345678, password_confirmation: 12345678)

Device.create!([
    { "make": "Moto", "model": "G40 Fusion", "imei_no": "10959593029", "serial_no": "919VDV456", "user_id": user.id },
    { "make": "Google", "model": "Pixel 4a", "imei_no": "11009593029", "serial_no": "364YFY123", "user_id": user.id }
])

Device.all.each do |d|
    DeviceLocation.create!([
        {device_imei_no: d.imei_no, location_at: Time.now - 15.minute, latitude: 22.688980, longitude: 75.833060, address: 'Mahadev market, 1481 D-sector, 60 Feet Rd, Sudama Nagar, Indore, Madhya Pradesh 452009'},
        {device_imei_no: d.imei_no, location_at: Time.now - 30.minute, latitude: 22.693597, longitude: 75.83001, address: 'No.1079 Sudama Nagar, Inside Smruti Dwar, indore'},
        {device_imei_no: d.imei_no, location_at: Time.now - 45.minute, latitude: 22.682250, longitude: 75.821470, address: '981, Sudama Nagar Main Rd, Near Mahaveet Gate, Footi Kothi, Ranjeet Hanuman Rd, Indore, Madhya Pradesh 452009'},
        {device_imei_no: d.imei_no, location_at: Time.now - 1.hour, latitude: 22.682250, longitude: 75.836190, address: 'MRPP+M7 Chanakyapuri, Indore, Madhya Pradesh'}
    ])
end
