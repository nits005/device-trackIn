class DeviceLocation < ApplicationRecord

    belongs_to :device, foreign_key: :device_imei_no, primary_key: :imei_no 
    
end