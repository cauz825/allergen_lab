class User < ApplicationRecord
    has_many :allergens
    has_many :ingredients, through: :allergens

    def find_recipes
        Recipe.all.where(self.recipe_id)
    end
end
