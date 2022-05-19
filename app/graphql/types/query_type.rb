module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :restaurants, [Types::RestaurantType], null: false,
      description: 'レストラン情報を全取得する'
    def restaurants
      Restaurant.all
    end

    field :restaurant, Types::RestaurantType, null: false do
      description '引数に指定したレストラン情報を取得する'
      argument :id, ID, required: true
    end

    def restaurant(id:)
      Restaurant.find(id)
    end
  end
end
