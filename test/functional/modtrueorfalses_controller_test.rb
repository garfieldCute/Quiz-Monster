require 'test_helper'

class ModtrueorfalsesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:modtrueorfalses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create modtrueorfalse" do
    assert_difference('Modtrueorfalse.count') do
      post :create, :modtrueorfalse => { }
    end

    assert_redirected_to modtrueorfalse_path(assigns(:modtrueorfalse))
  end

  test "should show modtrueorfalse" do
    get :show, :id => modtrueorfalses(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => modtrueorfalses(:one).to_param
    assert_response :success
  end

  test "should update modtrueorfalse" do
    put :update, :id => modtrueorfalses(:one).to_param, :modtrueorfalse => { }
    assert_redirected_to modtrueorfalse_path(assigns(:modtrueorfalse))
  end

  test "should destroy modtrueorfalse" do
    assert_difference('Modtrueorfalse.count', -1) do
      delete :destroy, :id => modtrueorfalses(:one).to_param
    end

    assert_redirected_to modtrueorfalses_path
  end
end
