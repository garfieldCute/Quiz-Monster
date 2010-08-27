require 'test_helper'

class JoinSectionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:join_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create join_section" do
    assert_difference('JoinSection.count') do
      post :create, :join_section => { }
    end

    assert_redirected_to join_section_path(assigns(:join_section))
  end

  test "should show join_section" do
    get :show, :id => join_sections(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => join_sections(:one).to_param
    assert_response :success
  end

  test "should update join_section" do
    put :update, :id => join_sections(:one).to_param, :join_section => { }
    assert_redirected_to join_section_path(assigns(:join_section))
  end

  test "should destroy join_section" do
    assert_difference('JoinSection.count', -1) do
      delete :destroy, :id => join_sections(:one).to_param
    end

    assert_redirected_to join_sections_path
  end
end
