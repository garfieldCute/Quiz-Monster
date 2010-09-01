require 'test_helper'

class MultiplechoicesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:multiplechoices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create multiplechoice" do
    assert_difference('Multiplechoice.count') do
      post :create, :multiplechoice => { }
    end

    assert_redirected_to multiplechoice_path(assigns(:multiplechoice))
  end

  test "should show multiplechoice" do
    get :show, :id => multiplechoices(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => multiplechoices(:one).to_param
    assert_response :success
  end

  test "should update multiplechoice" do
    put :update, :id => multiplechoices(:one).to_param, :multiplechoice => { }
    assert_redirected_to multiplechoice_path(assigns(:multiplechoice))
  end

  test "should destroy multiplechoice" do
    assert_difference('Multiplechoice.count', -1) do
      delete :destroy, :id => multiplechoices(:one).to_param
    end

    assert_redirected_to multiplechoices_path
  end
end
