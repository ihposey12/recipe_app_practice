class Recipe < ApplicationRecord
  belongs_to :user
  has_many :rijoins
  has_many :ingredients, through: :rijoins

  def self.sort
    self.all.sort_by {|recipe| recipe.ingredients.length}.reverse
  end
end
