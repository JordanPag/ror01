class Visit < ActiveRecord::Base
  validates :visitor, presence: true
end
