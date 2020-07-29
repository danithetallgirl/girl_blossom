class GirlBlossom::Dry
    @@all = []
    attr_accessor :name, :description, :price

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end