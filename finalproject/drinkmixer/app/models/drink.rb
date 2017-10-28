class Drink < ActiveRecord::Base
  validates :name, presence: true
  validates :creator, presence: true
  has_many :drinks
end
