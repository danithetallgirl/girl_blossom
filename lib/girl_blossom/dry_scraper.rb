require 'net/http'
require 'open-uri'
require 'json'
require 'pry'
require 'nokogiri'

require_relative './dry.rb'

class GirlBlossom::DryScraper
    
    def scrape_dry
        doc = Nokogiri::HTML(open("shorturl.at/ixBDQ"))
        # CURRENT URL: requests info for moisturizer name, description, and price.
    end
end
