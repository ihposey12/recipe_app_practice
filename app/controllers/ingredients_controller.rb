class IngredientsController < ApplicationController
    def index
        @ingredients = Ingredient.all
        @sorted_ingredients = Ingredient.all.sort_by{|i| i.num_of_allergic}.reverse
    end

    def show
        @ingredient = Ingredient.find(params[:id])
    end
end
