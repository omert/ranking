require 'test_helper'

class RankingsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rankings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ranking" do
    assert_difference('Ranking.count') do
      post :create, :ranking => { }
    end

    assert_redirected_to ranking_path(assigns(:ranking))
  end

  test "should show ranking" do
    get :show, :id => rankings(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => rankings(:one).to_param
    assert_response :success
  end

  test "should update ranking" do
    put :update, :id => rankings(:one).to_param, :ranking => { }
    assert_redirected_to ranking_path(assigns(:ranking))
  end

  test "should destroy ranking" do
    assert_difference('Ranking.count', -1) do
      delete :destroy, :id => rankings(:one).to_param
    end

    assert_redirected_to rankings_path
  end
end
