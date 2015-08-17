class Dog < ActiveRecord::Base
  belongs_to :owner
  validates :name, presence: true, length: {minimum: 2}, uniqueness: false
end
