require 'net/http'
class WeatherController < ApplicationController
  def index
    # binding.pry
    puts "hello #{params['lat']}"
    uri = URI("https://api.darksky.net/forecast/5b30c9a8f2a1996939817d496865c2eb/#{params['lat']},#{params['lon']}")
    # binding.pry
    @json = Net::HTTP.get(uri)

    # @json = { "Jane Doe" => 10, "Jim Doe" => 6 }
    render json: @json
  end
end
