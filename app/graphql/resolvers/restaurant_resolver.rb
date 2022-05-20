module Resolvers
  class RestaurantResolver < Resolvers::BaseResolver
    description '引数に指定したレストラン情報を取得する'
    type Types::RestaurantType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      Restaurant::find(id)
    end
  end
end
