require 'test_helper'

class QuizfinalsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quizfinals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quizfinal" do
    assert_difference('Quizfinal.count') do
      post :create, :quizfinal => { }
    end

    assert_redirected_to quizfinal_path(assigns(:quizfinal))
  end

  test "should show quizfinal" do
    get :show, :id => quizfinals(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => quizfinals(:one).to_param
    assert_response :success
  end

  test "should update quizfinal" do
    put :update, :id => quizfinals(:one).to_param, :quizfinal => { }
    assert_redirected_to quizfinal_path(assigns(:quizfinal))
  end

  test "should destroy quizfinal" do
    assert_difference('Quizfinal.count', -1) do
      delete :destroy, :id => quizfinals(:one).to_param
    end

    assert_redirected_to quizfinals_path
  end
end
