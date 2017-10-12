class Animal < ActiveRecord::Base
  #attr_accessor :weight
  #attr_accessor :units


  validates :name, presence: true
  validates :kind, presence: true
  validates :age, presence: true
  validates :age, numericality: true
  validates :favorite_food, presence: true
  #validates :weight, presence: true
end
