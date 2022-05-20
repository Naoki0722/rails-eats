module Resolvers
  class LineFoodsResolver < Resolvers::BaseResolver
    description '仮注文のデータを取得する'
    type Types::LineFoodType, null: false

    def resolve()
      line_foods = LineFood.active
      if line_foods.exists?
        {
          line_food_ids: line_foods.map { |line_food| line_food.id },
          restaurant: line_foods[0].restaurant,
          count: line_foods.sum { |line_food| line_food[:count] },
          amount: line_foods.sum { |line_food| line_food.total_amount },
        }
      else
        null
      end
    end
  end
end
