class GirlBlossom::DryScraper
    def self.scrape_dry
        doc = Nokogiri::HTML(open("https://www.sephora.com/product/creme-de-la-mer-moisturizing-cream-P416341?icid2=skininthegame_dry_moisturize_other_us_carsousel_ufe:p416341:product"))

        puts doc.css(".css-euydo4").text
        puts doc.css(".css-0").text
        puts doc.css(".css-slwsq8").text
        puts doc.css(".css-pz80c5").text.scan(/[^.]*./)
    end
end
