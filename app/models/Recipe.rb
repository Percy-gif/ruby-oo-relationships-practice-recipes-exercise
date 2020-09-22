class Recipe 

    attr_accessor :name


    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def name 
        @name 
    end 

    def users
        users = []
        RecipeCard.all.select do |card| 
          users << card.user if card.recipe == self.name  
        end 
        users 
        end 
    end 

    def self.all 
        @@all 
    end 

    def ingredients
        ingred = []
        RecipeIngredient.all.select do|ri|
            ingred << ri.ingredient if ri.recipe == self.name
        end 
     ingred
    end 

    def allergens 
       ingred = self.ingredients
            ingred.each do |ingred|
                Allergy.all 
        Allergy.all.select.do |allergy|
                allergy
       end 
    end 

            

    # def add_user(user)
    #     @users << user
    #     p self 
    #     # return "You have added a user to "

    # end 

    # def ingredients 
    #     ingredients = []
    #     Ingredient.all.each do |ingredient|
    #         if ingredient.recipes.find {|recipe| recipe == self}
    #             binding.pry
    #             ingredients << ingredient.name 
    #         end 
    #     end 
    #     ingredient 
    # end 



end 