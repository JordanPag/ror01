class Animal
  include ActiveModel::Model #magic code

  attr_accessor :name
  attr_accessor :kind
  attr_accessor :age
  attr_accessor :favorite_food
  attr_accessor :weight
  attr_accessor :units


  validates :name, presence: true
  validates :kind, presence: true
  validates :age, presence: true
  validates :age, numericality: true
  validates :favorite_food, presence: true
  validates :weight, presence: true
end
