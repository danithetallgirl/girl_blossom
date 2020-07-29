require_relative "./girl_blossom/dry.rb"
class GirlBlossom::Normal < GirlBlossom::Dry

    def self.all
        GirlBlossom::Scraper.scrape_normal if @@all.empty?
        @@all
    end

end