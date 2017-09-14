class WikiController < ApplicationController
  require 'net/http'
  def index
    url = URI("https://en.wikipedia.org/w/api.php?action=query&format=json&prop=links%7Cimages&list=search&srsearch=#{params["srsearch"]}")
    @json = Net::HTTP.get(url)
    render json: @json
  end
end
