require 'test_helper'

class ImportantDatesControllerTest < ActionController::TestCase
  setup do
    @important_date = important_dates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:important_dates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create important_date" do
    assert_difference('ImportantDate.count') do
      post :create, important_date: { day: @important_date.day, description: @important_date.description, title: @important_date.title }
    end

    assert_redirected_to important_date_path(assigns(:important_date))
  end

  test "should show important_date" do
    get :show, id: @important_date
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @important_date
    assert_response :success
  end

  test "should update important_date" do
    patch :update, id: @important_date, important_date: { day: @important_date.day, description: @important_date.description, title: @important_date.title }
    assert_redirected_to important_date_path(assigns(:important_date))
  end

  test "should destroy important_date" do
    assert_difference('ImportantDate.count', -1) do
      delete :destroy, id: @important_date
    end

    assert_redirected_to important_dates_path
  end
end
