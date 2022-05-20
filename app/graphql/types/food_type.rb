# frozen_string_literal: true

module Types
  class FoodType < Types::BaseObject
    field :id, ID, null: false
    field :restaurant_id, Integer, null: false
    field :name, String, null: false
    field :price, Integer, null: false
    field :description, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
