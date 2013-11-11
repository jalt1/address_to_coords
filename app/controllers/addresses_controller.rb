require 'open-uri'
require 'json'

class AddressesController < ApplicationController
  def fetch_coordinates
    # @address = "Foster and Sheridan"
    # @url_safe_address = URI.encode(@address)

    # # Your code goes here.
    # url = "http://maps.googleapis.com/maps/api/geocode/json?address=#{@url_safe_address}&sensor=false"
    # raw_data = open(url).read
    # parsed_data = JSON.parse(raw_data)
    # # The above line put the raw data into a Hash.
    # @latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]
    # @longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]
  end

  def get_coordinates
    @address = params["address"]
    @url_safe_address = URI.encode(@address)

    # Your code goes here.
    url = "http://maps.googleapis.com/maps/api/geocode/json?address=#{@url_safe_address}&sensor=false"
    raw_data = open(url).read
    parsed_data = JSON.parse(raw_data)
    # The above line put the raw data into a Hash.
    @latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]
    @longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]

  end

end
