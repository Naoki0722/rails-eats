# frozen_string_literal: true

module Types
  class RestaurantType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :fee, Integer, null: false
    field :time_required, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
