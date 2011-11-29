require 'test_helper'

class LineupsControllerTest < ActionController::TestCase
  setup do
    @lineup = lineups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lineups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lineup" do
    assert_difference('Lineup.count') do
      post :create, lineup: @lineup.attributes
    end

    assert_redirected_to lineup_path(assigns(:lineup))
  end

  test "should show lineup" do
    get :show, id: @lineup.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lineup.to_param
    assert_response :success
  end

  test "should update lineup" do
    put :update, id: @lineup.to_param, lineup: @lineup.attributes
    assert_redirected_to lineup_path(assigns(:lineup))
  end

  test "should destroy lineup" do
    assert_difference('Lineup.count', -1) do
      delete :destroy, id: @lineup.to_param
    end

    assert_redirected_to lineups_path
  end
end
