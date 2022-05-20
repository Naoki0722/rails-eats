# frozen_string_literal: true

module Types
  class LineFoodType < Types::BaseObject
    # field :id, ID, null: false
    # field :food_id, Integer, null: false
    # field :restaurant_id, Integer, null: false
    # field :order_id, Integer
    field :line_food_ids,[Integer], null: false
    field :count, Integer, null: false
    # field :active, Boolean, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :restaurant, Types::RestaurantType, null: false
    field :amount, Integer, null: false
  end
end
