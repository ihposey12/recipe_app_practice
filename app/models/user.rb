class User < ApplicationRecord
    has_many :recipes, dependent: :destroy
    has_many :allergies
    has_many :ingredients, through: :allergies
end
