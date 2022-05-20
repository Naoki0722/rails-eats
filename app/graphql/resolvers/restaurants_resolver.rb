module Resolvers
  class RestaurantsResolver < Resolvers::BaseResolver
    description 'レストラン情報を全取得する'
    type [Types::RestaurantType], null: false
    def resolve()
      Restaurant.all
    end
  end
end
