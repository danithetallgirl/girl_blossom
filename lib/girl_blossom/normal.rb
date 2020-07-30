require_relative "./dry.rb"

class GirlBlossom::Normal < GirlBlossom::Dry

    def self.all
        GirlBlossom::Scraper.scrape_normal
    end

end
