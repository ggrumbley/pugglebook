require 'test_helper'

class FavoriteFoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @favorite_food = favorite_foods(:one)
  end

  test "should get index" do
    get favorite_foods_url, as: :json
    assert_response :success
  end

  test "should create favorite_food" do
    assert_difference('FavoriteFood.count') do
      post favorite_foods_url, params: { favorite_food: { food_id: @favorite_food.food_id, puggle_id: @favorite_food.puggle_id } }, as: :json
    end

    assert_response 201
  end

  test "should show favorite_food" do
    get favorite_food_url(@favorite_food), as: :json
    assert_response :success
  end

  test "should update favorite_food" do
    patch favorite_food_url(@favorite_food), params: { favorite_food: { food_id: @favorite_food.food_id, puggle_id: @favorite_food.puggle_id } }, as: :json
    assert_response 200
  end

  test "should destroy favorite_food" do
    assert_difference('FavoriteFood.count', -1) do
      delete favorite_food_url(@favorite_food), as: :json
    end

    assert_response 204
  end
end
