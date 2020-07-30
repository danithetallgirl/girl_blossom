require_relative "./dry.rb"

class GirlBlossom::Combo < GirlBlossom::Dry

    def self.all
        GirlBlossom::Scraper.scrape_combo
    end

end