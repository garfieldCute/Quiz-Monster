require 'test_helper'

class MulanswersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mulanswers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mulanswer" do
    assert_difference('Mulanswer.count') do
      post :create, :mulanswer => { }
    end

    assert_redirected_to mulanswer_path(assigns(:mulanswer))
  end

  test "should show mulanswer" do
    get :show, :id => mulanswers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => mulanswers(:one).to_param
    assert_response :success
  end

  test "should update mulanswer" do
    put :update, :id => mulanswers(:one).to_param, :mulanswer => { }
    assert_redirected_to mulanswer_path(assigns(:mulanswer))
  end

  test "should destroy mulanswer" do
    assert_difference('Mulanswer.count', -1) do
      delete :destroy, :id => mulanswers(:one).to_param
    end

    assert_redirected_to mulanswers_path
  end
end
