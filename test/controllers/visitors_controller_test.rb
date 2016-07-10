require 'test_helper'

class VisitorsControllerTest < ActionController::TestCase
  setup do
    @visitor = visitors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visitors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visitor" do
    assert_difference('Visitor.count') do
      post :create, visitor: { city: @visitor.city, email: @visitor.email, first_name: @visitor.first_name, first_time_visitor: @visitor.first_time_visitor, last_name: @visitor.last_name, learn_about_jesus: @visitor.learn_about_jesus, marital_status: @visitor.marital_status, more_info_requested: @visitor.more_info_requested, new_to_area: @visitor.new_to_area, phone: @visitor.phone, state: @visitor.state, street_address: @visitor.street_address, visit_requested: @visitor.visit_requested, zip: @visitor.zip }
    end

    assert_redirected_to visitor_path(assigns(:visitor))
  end

  test "should show visitor" do
    get :show, id: @visitor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @visitor
    assert_response :success
  end

  test "should update visitor" do
    patch :update, id: @visitor, visitor: { city: @visitor.city, email: @visitor.email, first_name: @visitor.first_name, first_time_visitor: @visitor.first_time_visitor, last_name: @visitor.last_name, learn_about_jesus: @visitor.learn_about_jesus, marital_status: @visitor.marital_status, more_info_requested: @visitor.more_info_requested, new_to_area: @visitor.new_to_area, phone: @visitor.phone, state: @visitor.state, street_address: @visitor.street_address, visit_requested: @visitor.visit_requested, zip: @visitor.zip }
    assert_redirected_to visitor_path(assigns(:visitor))
  end

  test "should destroy visitor" do
    assert_difference('Visitor.count', -1) do
      delete :destroy, id: @visitor
    end

    assert_redirected_to visitors_path
  end
end
