require 'net/http'
class WeatherController < ApplicationController
  def index
    ip = request.remote_ip
    if !params['lat'] || !params['lon']
      p 'No lat or lon'
      uri2 = URI("http://ip-api.com/json/#{ip}")
      @location = JSON.parse(Net::HTTP.get(uri2))
       params["lon"] = @location["lon"]
       params["lat"] = @location["lat"]
    end
      WeatherRequest.create(ipaddress: ip, lat: params["lat"], lon: params["lon"])
      uri = URI("https://api.darksky.net/forecast/5b30c9a8f2a1996939817d496865c2eb/#{params['lat']},#{params['lon']}")
      binding.pry
      @json = Net::HTTP.get(uri)
  
      render json: @json
  end
end
