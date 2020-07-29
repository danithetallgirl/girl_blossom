class GirlBlossom::Dry
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        save
    end

    def self.all
        GirlBlossom::Scraper.scrape_dry if @@all.empty?
        @@all
    end

    def save
        @@all << self
    end
end
