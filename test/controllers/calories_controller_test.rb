require 'test_helper'

class CaloriesControllerTest < ActionController::TestCase
  setup do
    @calory = calories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:calories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create calory" do
    assert_difference('Calorie.count') do
      post :create, calory: { calorie_in: @calory.calorie_in, calorie_out: @calory.calorie_out, height: @calory.height, weight: @calory.weight }
    end

    assert_redirected_to calory_path(assigns(:calory))
  end

  test "should show calory" do
    get :show, id: @calory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @calory
    assert_response :success
  end

  test "should update calory" do
    patch :update, id: @calory, calory: { calorie_in: @calory.calorie_in, calorie_out: @calory.calorie_out, height: @calory.height, weight: @calory.weight }
    assert_redirected_to calory_path(assigns(:calory))
  end

  test "should destroy calory" do
    assert_difference('Calorie.count', -1) do
      delete :destroy, id: @calory
    end

    assert_redirected_to calories_path
  end
end
