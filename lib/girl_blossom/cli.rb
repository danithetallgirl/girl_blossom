class GirlBlossom::CLI
    
    def call
        puts "Hi there! Welcome to Girl Blossom!"
        puts "Girl Blossom is an app that helps you find the right face moisturizer for your skin type. Whether your skin is dry, normal, oily, or combination, our app will find the product for you."
        puts "To see the recommended product for dry skin, enter 'dry skin'."
        puts "To see the recommended product for normal skin, enter 'normal skin'."
        puts "To see the recommended product for oily skin, enter 'oily skin'."
        puts "To see the recommended product for combination skin, enter 'combination skin'."
        puts "If you're done learning about your product, enter 'exit'."

        user_input = ""
        until user_input == "exit"
            puts "What's your skin type?"
            user_input = gets.chomp
            case user_input
            when "dry" || "dry skin"
                self.dry_product
            when "normal" || "normal skin"
                self.normal_product
            when "oily" || "oily skin"
                self.oily_product
            when "combo" || "combination" || "combination skin"
                self.combination_product
            when "exit"
                puts "Have the best day!"
            end
        end
    end

    def dry_product
        puts "Bliss"
        binding.pry
    end
end

#CLI is a class
#.new is a class method
#initialize is an 
#self is an instance of the class
#call is an instance method
#:: is name spacing