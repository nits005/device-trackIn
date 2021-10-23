class Device < ApplicationRecord

    has_many :device_locations, foreign_key: :device_imei_no, primary_key: :imei_no 


    def latest_latitude
        self.device_locations.last&.latitude
    end

    def latest_longitude
        self.device_locations.last&.longitude
    end
end
