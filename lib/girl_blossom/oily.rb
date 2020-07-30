require_relative "./dry.rb"

class GirlBlossom::Oily < GirlBlossom::Dry

    def self.all
        GirlBlossom::Scraper.scrape_oily
    end

end