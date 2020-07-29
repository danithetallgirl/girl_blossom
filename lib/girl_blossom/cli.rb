class GirlBlossom::CLI
    #Defining the call method with strings that the user will see when logging onto the app. Until user types exit, call will continue to ask, "What's your skin type?" until the user types in their skin type.
    def call
        puts "\nHi there! Welcome to Girl Blossom!\n"
        puts "\nGirl Blossom is an app that helps you find the right face moisturizer for your skin type. Whether your skin is dry, normal, oily, or combination, our app will find the product for you.\n"
        puts "\nEnter your skin type to see the moisturizer we recommend for you.\n"
        puts "For example, you can enter:  dry, normal, oily or combo."
        puts "If you're done learning about your product, enter 'exit'."

        user_input = ""
        until user_input == "exit"
            puts "\nWhat's your skin type?\n"
            user_input = gets.chomp
            case user_input
            when "dry" || "dry skin"
                self.dry_product
            when "normal" || "normal skin"
                self.normal_product
            when "oily" || "oily skin"
                self.oily_product
            when "combo" || "combination"
                self.combo_product
            when "exit" || "EXIT" || "Exit"
                puts "Have the best day!"
            end
        end
    end
#dry, normal, oily, and combo will pull product information from their assigned classes. Each skin type class then puts the suggested product along with brand name, product name, price, and a full product description.
    def dry_product
        GirlBlossom::Dry.all do |product|
            puts "#{product}" 
        end
    end

    def normal_product
        GirlBlossom::Normal.all do |product|
            puts "#{product}" 
        end
    end

    def oily_product
        GirlBlossom::Oily.all do |product|
            puts "#{product}" 
        end
    end

    def combo_product
        GirlBlossom::Combo.all do |product|
            puts "#{product}" 
        end
    end
end

#CLI is a class
#.new is a class method
#initialize is an 
#self is an instance of the class
#call is an instance method
#:: is name spacing