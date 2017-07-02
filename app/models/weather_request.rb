class WeatherRequest < ApplicationRecord
    def request_today
        WeatherRequest.where("DATE(created_at) = ?", Date.today).count
    end
end
