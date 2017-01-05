module Api
  module V1
    class FavoriteFoodsController < ApplicationController
      before_action :set_favorite_food, only: [:show, :update, :destroy]

      # GET /favorite_foods
      def index
        @favorite_foods = FavoriteFood.all

        render json: @favorite_foods
      end

      # GET /favorite_foods/1
      def show
        render json: @favorite_food
      end

      # POST /favorite_foods
      def create
        @favorite_food = FavoriteFood.new(favorite_food_params)

        if @favorite_food.save
          render json: @favorite_food, status: :created, location: @favorite_food
        else
          render json: @favorite_food.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /favorite_foods/1
      def update
        if @favorite_food.update(favorite_food_params)
          render json: @favorite_food
        else
          render json: @favorite_food.errors, status: :unprocessable_entity
        end
      end

      # DELETE /favorite_foods/1
      def destroy
        @favorite_food.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_favorite_food
          @favorite_food = FavoriteFood.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def favorite_food_params
          params.require(:favorite_food).permit(:puggle_id, :food_id)
        end
    end
  end
end
