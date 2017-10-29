class Drink < ActiveRecord::Base
  attr_accessor :selection
  validates :name, presence: true
  validates :creator, presence: true
  has_many :ingredients
end
