class GirlBlossom::CLI
    #Defining the call method with strings that the user will see when logging onto the app. Until user types exit, call will continue to ask, "What's your skin type?" until the user types in their skin type.

    def call
        puts "\nHi there! Welcome to Girl Blossom!\n".colorize(:light_magenta)
        puts "Girl Blossom is an app that helps you find the right face moisturizer for your skin type."
        puts "Whether your skin is dry, normal, oily, or combination, our app will find the product for you."
        puts "\nEnter your skin type to see the moisturizer we recommend for you.\n"
        puts "\n"
    #Until the user enters a skin type or exit, it'll continue to ask the user "What's your skin type?"
        user_input = ""
        until user_input == "exit"
            puts "What's your skin type?".colorize(:light_yellow)
            puts "I accept: dry, normal, oily, combo, and exit.".colorize(:light_yellow)
            user_input = gets.chomp
            case user_input
            when "dry" #when user types in dry, it will puts out the method dry_product
                self.dry_product
            when "normal"
                self.normal_product
            when "oily"
                self.oily_product
            when "combo"
                self.combo_product
            when "exit"
                 puts "Have the best day!".colorize(:light_magenta)
            end
        end
    end
#dry, normal, oily, and combo will pull product information from their assigned classes. Each skin type class then puts the suggested product along with brand name, product name, price, and a full product description.
    def dry_product
        GirlBlossom::Dry.all do |product|
            puts brand
        end
    end

    def normal_product
        GirlBlossom::Normal.all do |product|
        end
    end

    def oily_product
        GirlBlossom::Oily.all do |product|
        end
    end

    def combo_product
        GirlBlossom::Combo.all do |product|
        end
    end
end

#CLI is a class
#.new is a class method
#initialize is an 
#self is an instance of the class
#call is an instance method
#:: is name spacing