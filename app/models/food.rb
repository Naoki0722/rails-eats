class Food < ActiveRecord
  belongs_to :restaurant
  belongs_to :order, optional: true
  has_one :line_food
end
