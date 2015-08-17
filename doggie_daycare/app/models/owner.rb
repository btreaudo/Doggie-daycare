class Owner < ActiveRecord::Base
  has_many :cats
  validates :name, presence: true, length: {minimum: 3}, uniqueness: false
end
