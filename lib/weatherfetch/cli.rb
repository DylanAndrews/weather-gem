require 'httparty'
require 'thor'
require 'pry'

module WeatherFetch
  class CLI < Thor
    desc 'city', 'Get weather for a given city'
    def city(city)
      options = { query: { q: city, appid: 'c8d7f5fd25b8914cc543ed45e6a40bba' } }
      r = HTTParty.get('http://api.openweathermap.org/data/2.5/weather', options)
      puts r
    end
  end
end