require 'test_helper'

class RequestsControllerTest < ActionController::TestCase
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create request" do
    assert_difference('Request.count') do
      post :create, request: { accountname: @request.accountname, artreview: @request.artreview, asap: @request.asap, comments: @request.comments, contact: @request.contact, contentreview: @request.contentreview, description: @request.description, duedate: @request.duedate, references: @request.references, requestname: @request.requestname, specifications: @request.specifications, type: @request.type }
    end

    assert_redirected_to request_path(assigns(:request))
  end

  test "should show request" do
    get :show, id: @request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @request
    assert_response :success
  end

  test "should update request" do
    put :update, id: @request, request: { accountname: @request.accountname, artreview: @request.artreview, asap: @request.asap, comments: @request.comments, contact: @request.contact, contentreview: @request.contentreview, description: @request.description, duedate: @request.duedate, references: @request.references, requestname: @request.requestname, specifications: @request.specifications, type: @request.type }
    assert_redirected_to request_path(assigns(:request))
  end

  test "should destroy request" do
    assert_difference('Request.count', -1) do
      delete :destroy, id: @request
    end

    assert_redirected_to requests_path
  end
end
