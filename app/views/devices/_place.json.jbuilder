json.extract! device, :id, :name, :latitude, :longitude, :created_at, :updated_at
json.url device_url(device, format: :json)
