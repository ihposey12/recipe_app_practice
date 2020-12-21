class RecipesController < ApplicationController
    def index
        @recipes = Recipe.all.sort
    end

    def new
        @recipe = Recipe.new
        @users = User.all
    end

    def create
        @recipe = Recipe.create(recipe_params)
        redirect_to recipe_path(@recipe)
    end

    def show
        @recipe = Recipe.find(params[:id])
    end

    def search
        @recipe = Recipe.find_by(name: params['query'])
        redirect_to recipe_path(@recipe)
    end

    private

    def recipe_params
        params.require(:recipe).permit(:name, :user_id)
    end
end
