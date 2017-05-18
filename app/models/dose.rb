class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates_presence_of :cocktail, :ingredient
  validates :description, presence: true

  validates_uniqueness_of :ingredient, scope: [:cocktail]
end
