require 'test_helper'

class NewquizzesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newquizzes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newquiz" do
    assert_difference('Newquiz.count') do
      post :create, :newquiz => { }
    end

    assert_redirected_to newquiz_path(assigns(:newquiz))
  end

  test "should show newquiz" do
    get :show, :id => newquizzes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => newquizzes(:one).to_param
    assert_response :success
  end

  test "should update newquiz" do
    put :update, :id => newquizzes(:one).to_param, :newquiz => { }
    assert_redirected_to newquiz_path(assigns(:newquiz))
  end

  test "should destroy newquiz" do
    assert_difference('Newquiz.count', -1) do
      delete :destroy, :id => newquizzes(:one).to_param
    end

    assert_redirected_to newquizzes_path
  end
end
