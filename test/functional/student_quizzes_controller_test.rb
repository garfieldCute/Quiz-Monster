require 'test_helper'

class StudentQuizzesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_quizzes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_quiz" do
    assert_difference('StudentQuiz.count') do
      post :create, :student_quiz => { }
    end

    assert_redirected_to student_quiz_path(assigns(:student_quiz))
  end

  test "should show student_quiz" do
    get :show, :id => student_quizzes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => student_quizzes(:one).to_param
    assert_response :success
  end

  test "should update student_quiz" do
    put :update, :id => student_quizzes(:one).to_param, :student_quiz => { }
    assert_redirected_to student_quiz_path(assigns(:student_quiz))
  end

  test "should destroy student_quiz" do
    assert_difference('StudentQuiz.count', -1) do
      delete :destroy, :id => student_quizzes(:one).to_param
    end

    assert_redirected_to student_quizzes_path
  end
end
