module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # field :restaurants, [Types::RestaurantType], null: false,
    #   description: 'レストラン情報を全取得する'
    # def restaurants
    #   Restaurant.all
    # end

    # レストラン情報の取得
    field :restaurants, resolver: Resolvers::RestaurantsResolver
    field :restaurant, resolver: Resolvers::RestaurantResolver

    # レストランに紐づく料理データの取得
    field :foods, resolver: Resolvers::FoodsResolver
    
    # 仮注文のデータ
    field :line_foods, resolver: Resolvers::LineFoodsResolver
  end
end
