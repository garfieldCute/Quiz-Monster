require 'test_helper'

class TrueorfalsesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trueorfalses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trueorfalse" do
    assert_difference('Trueorfalse.count') do
      post :create, :trueorfalse => { }
    end

    assert_redirected_to trueorfalse_path(assigns(:trueorfalse))
  end

  test "should show trueorfalse" do
    get :show, :id => trueorfalses(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => trueorfalses(:one).to_param
    assert_response :success
  end

  test "should update trueorfalse" do
    put :update, :id => trueorfalses(:one).to_param, :trueorfalse => { }
    assert_redirected_to trueorfalse_path(assigns(:trueorfalse))
  end

  test "should destroy trueorfalse" do
    assert_difference('Trueorfalse.count', -1) do
      delete :destroy, :id => trueorfalses(:one).to_param
    end

    assert_redirected_to trueorfalses_path
  end
end
