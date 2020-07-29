class GirlBlossom::Scraper
    def self.scrape_dry
        doc = Nokogiri::HTML(open("https://www.sephora.com/product/creme-de-la-mer-moisturizing-cream-P416341?icid2=skininthegame_dry_moisturize_other_us_carsousel_ufe:p416341:product"))

        puts "Brand:" + " " + doc.css(".css-euydo4").text
        puts "Product:" + " " + doc.css(".css-0").text
        puts "Price:" + " " + doc.css(".css-slwsq8").text
        puts doc.css(".css-pz80c5").text.scan(/[^.]*./)
    end

    def self.scrape_normal
        doc = Nokogiri::HTML(open("https://www.sephora.com/product/the-true-cream-aqua-bomb-P394639?icid2=skincarebyskintype_normal_moisturize_other_carousel_us_ufe:p394639:product"))

        puts doc.css(".css-euydo4").text
        puts doc.css(".css-0").text
        puts doc.css(".css-slwsq8").text
        puts doc.css(".css-pz80c5").text.scan(/[^.]*./)
    end

    def self.scrape_oily
        doc = Nokogiri::HTML(open("https://www.sephora.com/product/creme-de-la-mer-moisturizing-cream-P416341?icid2=skininthegame_dry_moisturize_other_us_carsousel_ufe:p416341:product"))

        puts doc.css(".css-euydo4").text
        puts doc.css(".css-0").text
        puts doc.css(".css-slwsq8").text
        puts doc.css(".css-pz80c5").text.scan(/[^.]*./)
    end

    def self.scrape_combo
        doc = Nokogiri::HTML(open("https://www.sephora.com/product/creme-de-la-mer-moisturizing-cream-P416341?icid2=skininthegame_dry_moisturize_other_us_carsousel_ufe:p416341:product"))

        puts doc.css(".css-euydo4").text
        puts doc.css(".css-0").text
        puts doc.css(".css-slwsq8").text
        puts doc.css(".css-pz80c5").text.scan(/[^.]*./)
    end


end
