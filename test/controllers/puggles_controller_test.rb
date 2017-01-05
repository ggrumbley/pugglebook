require 'test_helper'

class PugglesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @puggle = puggles(:one)
  end

  test "should get index" do
    get puggles_url, as: :json
    assert_response :success
  end

  test "should create puggle" do
    assert_difference('Puggle.count') do
      post puggles_url, params: { puggle: { build: @puggle.build, color: @puggle.color, name: @puggle.name, temperament: @puggle.temperament } }, as: :json
    end

    assert_response 201
  end

  test "should show puggle" do
    get puggle_url(@puggle), as: :json
    assert_response :success
  end

  test "should update puggle" do
    patch puggle_url(@puggle), params: { puggle: { build: @puggle.build, color: @puggle.color, name: @puggle.name, temperament: @puggle.temperament } }, as: :json
    assert_response 200
  end

  test "should destroy puggle" do
    assert_difference('Puggle.count', -1) do
      delete puggle_url(@puggle), as: :json
    end

    assert_response 204
  end
end
