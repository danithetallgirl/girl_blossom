class GirlBlossom::Combo
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        save
    end

    def self.all
        GirlBlossom::Scraper.scrape_combo if @@all.empty?
        @@all
    end

    def save
        @@all << self
    end
end