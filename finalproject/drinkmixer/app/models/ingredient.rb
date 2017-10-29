class Ingredient < ActiveRecord::Base
  validates :name, presence: true
  has_many :drinks
end
