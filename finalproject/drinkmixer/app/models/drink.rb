class Drink < ActiveRecord::Base
  validates :name, presence: true
  validates :creator, presence: true
  has_and_belongs_to_many :ingredients
end
