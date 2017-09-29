class Animal
  include ActiveModel::Model #magic code

  attr_accessor :name
  attr_accessor :kind
  attr_accessor :age

  validates :name, presence: true
  validates :kind, presence: true
  validates :age, presence: true
  validates :age, numericality: true
end
