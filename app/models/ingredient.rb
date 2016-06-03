class Ingredient < ActiveRecord::Base
  has_many :doses

  validates :name, uniqueness: true
end
