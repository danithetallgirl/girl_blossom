class GirlBlossom::Combo < GirlBlossom::Dry

    def self.all
        GirlBlossom::Scraper.scrape_combo if @@all.empty?
        @@all
    end

end