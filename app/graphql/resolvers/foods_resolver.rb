module Resolvers
  class FoodsResolver < Resolvers::BaseResolver
    description '指定したレストランの料理を表示する'
    type [Types::FoodType], null: false

    argument :restaurant_id, Integer, required: true

    def resolve(restaurant_id:)
      Food::find(restaurant_id)
    end
  end
end
