require 'test_helper'

class CoffeespotsControllerTest < ActionController::TestCase
  setup do
    @coffeespot = coffeespots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coffeespots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coffeespot" do
    assert_difference('Coffeespot.count') do
      post :create, coffeespot: @coffeespot.attributes
    end

    assert_redirected_to coffeespot_path(assigns(:coffeespot))
  end

  test "should show coffeespot" do
    get :show, id: @coffeespot.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coffeespot.to_param
    assert_response :success
  end

  test "should update coffeespot" do
    put :update, id: @coffeespot.to_param, coffeespot: @coffeespot.attributes
    assert_redirected_to coffeespot_path(assigns(:coffeespot))
  end

  test "should destroy coffeespot" do
    assert_difference('Coffeespot.count', -1) do
      delete :destroy, id: @coffeespot.to_param
    end

    assert_redirected_to coffeespots_path
  end
end
