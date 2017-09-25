class TwitchController < ApplicationController
  require 'net/http'
  def index
    uri = URI("https://api.twitch.tv/kraken/streams/#{params["stream"]}/?client_id=#{ENV["Twitch_Client"]}")
    @json = Net::HTTP.get(uri)
    render json: @json
  end

end
