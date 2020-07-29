require 'pry'

class Dry
    attr_reader :name, :details, :price
    @@all = []

    def initialize(name=nil, details=nil, price=nil)
        @name = name
        @details = details
        @price = price
        @@all << self
    end

    def self.all
        @@all
    end

    # .new_from_json assigns countries attributes using the attribute notation in the json object --- Country.new renames some of these attributes (subregion=continent, latlng=lat_lng)
    def self.new_from_json(obj)
        self.new(
            obj["name"],
            obj["capital"],
            obj["currencies"],
            obj["population"],
            obj["languages"],
            obj["alpha3Code"],
            obj["area"],
            obj["subregion"],
            obj["borders"],
            obj["latlng"],
            obj["altSpellings"],
            obj["demonym"],
            obj["gini"],
            obj["timezones"],
            obj["nativeName"],
            obj["flag"]
        )
    end

    # this will be used for finding Countries -- thinking of implementing .include? rather than == to lead to a list of relevant countries
    def self.find_by_name(arg)
        self.all.find do |country|
            country.name.upcase == arg.upcase || country.alt_spellings.upcase == arg.upcase || country.alpha3Code == arg.upcase
        end
    end

    # find matches returns an array of Country instances that match the search term
    def self.find_matches(arg)
        self.all.select do |country|    
            country.name.upcase.include?(arg.upcase) || country.alt_spellings.find {|sp| sp.upcase.include?(arg.upcase)} || country.alpha3code.include?(arg.upcase)
        end
    end
end