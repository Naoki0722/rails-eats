module Mutations
  class CreateLineFood < BaseMutation
    field :create_line_food, Types::LineFoodType, null: false
    argument :food_id, Integer, required: true
    argument :food_count, Integer, required: true

    def resolve(food_id:, food_count:)
      ordered_food = Food.find(food_id)
      if LineFood.active.other_restaurant(ordered_food.restaurant_id).exists?
        # 既存のレストラン情報と新規レストラン情報を返す
        # return render json: {
        #   existing_restaurant: LineFood.other_restaurant(ordered_food.restaurant.id).first.restaurant,
        #   new_restaurant: Food.find(params[:food_id]).restaurant.name,
        # }, status: :not_acceptable
      end

      if ordered_food.line_food.present?
        line_food = ordered_food.line_food
        line_food.attributes = {
          count: ordered_food.line_food.count + food_count,
          active: true
        }
      else
        line_food = ordered_food.build_line_food(
          count: food_count,
          restaurant: ordered_food.restaurant,
          active: true
        )
      end

      if line_food.save!
        # 仮注文のデータを返す
        # render json: {
        #   line_food: line_food
        # }, status: :created
      else
        # 空データを返す
        # render json: {}, status: :internal_server_error
      end
    end
  end
end
