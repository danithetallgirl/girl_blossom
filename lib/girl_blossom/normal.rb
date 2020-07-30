require_relative "./dry.rb"
#Each skin type class is now inheriting from the dry class.
class GirlBlossom::Normal < GirlBlossom::Dry

    def self.all
        GirlBlossom::Scraper.scrape_normal if @@all.empty?
        @@all
    end

end
