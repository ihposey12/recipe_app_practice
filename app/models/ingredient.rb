class Ingredient < ApplicationRecord
    has_many :rijoins
    has_many :recipes, through: :rijoins
    has_many :allergies
    has_many :users, through: :allergies

    def num_of_allergic
        Allergy.all.select{|a| a.ingredient_id == self.id}.count
    end
end
