class TwitchController < ApplicationController
  require 'net/http'
  def index
    if params["stream"] != nil
      uri = URI("https://api.twitch.tv/kraken/streams/#{params["stream"]}/?client_id=#{ENV["Twitch_Client"]}")
    elsif params["channel"] != nil
      uri = URI("https://api.twitch.tv/kraken/channels/#{params["channel"]}/?client_id=#{ENV["Twitch_Client"]}")
    end
    @json = Net::HTTP.get(uri)
    render json: @json
  end

end
