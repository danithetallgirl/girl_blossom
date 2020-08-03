class GirlBlossom::Scraper
    #Each method is scraping from a URL that is puts-ing out the brand name, product name, price, and description all by scraping their assigned url/site.

    def self.scrape_dry
        doc = Nokogiri::HTML(open("https://www.sephora.com/product/creme-de-la-mer-moisturizing-cream-P416341?icid2=skininthegame_dry_moisturize_other_us_carsousel_ufe:p416341:product"))

        puts "Brand:".colorize(:light_blue) + " " + doc.css(".css-euydo4").text
        puts "Product:".colorize(:light_blue) + " " + doc.css(".css-0").text
        puts "Price:".colorize(:light_blue) + " " + doc.css(".css-slwsq8").text
        puts doc.css(".css-pz80c5").text.scan(/[^.]*./)
    end

    def self.scrape_normal
        doc = Nokogiri::HTML(open("https://www.sephora.com/product/the-true-cream-aqua-bomb-P394639?icid2=skincarebyskintype_normal_moisturize_other_carousel_us_ufe:p394639:product"))

        puts "Brand:".colorize(:light_blue) + " " + doc.css(".css-euydo4").text
        puts "Product:".colorize(:light_blue) + " " + doc.css(".css-0").text
        puts "Price:".colorize(:light_blue) + " " + doc.css(".css-slwsq8").text
        puts doc.css(".css-pz80c5").text.scan(/[^.]*./)
    end

    def self.scrape_oily
        doc = Nokogiri::HTML(open("https://www.sephora.com/product/oil-pore-control-mattifier-broad-spectrum-spf-45-pa-P446934?icid2=skincarebyskintype_oily_moisturize_bestseller_carousel_us_ufe:p446934:product"))

        puts "Brand:".colorize(:light_blue) + " " + doc.css(".css-euydo4").text
        puts "Product:".colorize(:light_blue) + " " + doc.css(".css-0").text
        puts "Price:".colorize(:light_blue) + " " + doc.css(".css-slwsq8").text
        puts doc.css(".css-pz80c5").text.scan(/[^.]*./)
    end

    def self.scrape_combo
        doc = Nokogiri::HTML(open("https://www.sephora.com/product/tidal-brightening-enzyme-water-cream-P406938?icid2=skincarefordifferentskintype_combo_moisturize_bestseller_us_carousel_ufe:p406938:product"))

        puts "Brand:".colorize(:light_blue) + " " + doc.css(".css-euydo4").text
        puts "Product:".colorize(:light_blue) + " " + doc.css(".css-0").text
        puts "Price:".colorize(:light_blue) + " " + doc.css(".css-slwsq8").text
        puts doc.css(".css-pz80c5").text.scan(/[^.]*./)
    end
end
