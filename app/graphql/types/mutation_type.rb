module Types
  class MutationType < Types::BaseObject
    field :create_line_food, mutation: Mutations::CreateLineFood
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end
  end
end
