class GirlBlossom::Oily < GirlBlossom::Dry

    def self.all
        GirlBlossom::Scraper.scrape_oily if @@all.empty?
        @@all
    end

end