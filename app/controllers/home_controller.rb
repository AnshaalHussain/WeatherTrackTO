# frozen_string_literal: true

require 'net/http'
class HomeController < ApplicationController
  API_KEY = ENV['WEATHER_API_KEY']
   def index
	url = 
"https://api.openweathermap.org/data/2.5/weather?lat=43.651070&lon=-79.347015&units=metric&appid=#{ENV['WEATHER_API_KEY']}"
	uri = URI(url)
	res = Net::HTTP.get_response(uri)
	@data = JSON.parse(res.body)
   end
end

