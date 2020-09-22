

class Ingredient 

    attr_accessor :name 
    
    @@all = []   #all ingredients that exist 
    
    def initialize(name)
        @name = name 
        @recipes = []   #all recipes that use this ingredients 
    
        @@all << self 
    end 
    
    def name 
        @name 
    end 
    
    def recipes
         @recipes
    end 
    
    def self.all 
        @@all
    end 
    
    # def add_recipe(recipe)
    #     @recipes << recipe
    #     p self 
    #     # return "This #{self.name}"
    
    # end 
    
    
    end 