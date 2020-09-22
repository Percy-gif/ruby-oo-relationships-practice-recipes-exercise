class User 

    attr_accessor :name 
    
    @@all = []
    
    def initialize(name) 
        @name = name 
        @@all << self 
    end 
    
    def self.all 
        @@all
    end 
    
    
    def recipes 
        RecipeCard.all.select {|card| card.user == self}
    end 
    
    
    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(recipe, self.name, date, rating)
    end 
    
    def declare_allergy(ingredient)
        Allergy.new(self.name, ingredient)
    end 
    
    def allergens 
        Allergy.all.select {|allergy| allergy.user == self.name}
    end 
    
    
    end 
    