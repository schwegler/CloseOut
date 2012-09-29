require 'test_helper'

class ScopeOfWorksControllerTest < ActionController::TestCase
  setup do
    @scope_of_work = scope_of_works(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scope_of_works)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scope_of_work" do
    assert_difference('ScopeOfWork.count') do
      post :create, :scope_of_work => { :completed => @scope_of_work.completed, :contractor => @scope_of_work.contractor, :item => @scope_of_work.item, :notes => @scope_of_work.notes, :worktype => @scope_of_work.worktype }
    end

    assert_redirected_to scope_of_work_path(assigns(:scope_of_work))
  end

  test "should show scope_of_work" do
    get :show, :id => @scope_of_work
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @scope_of_work
    assert_response :success
  end

  test "should update scope_of_work" do
    put :update, :id => @scope_of_work, :scope_of_work => { :completed => @scope_of_work.completed, :contractor => @scope_of_work.contractor, :item => @scope_of_work.item, :notes => @scope_of_work.notes, :worktype => @scope_of_work.worktype }
    assert_redirected_to scope_of_work_path(assigns(:scope_of_work))
  end

  test "should destroy scope_of_work" do
    assert_difference('ScopeOfWork.count', -1) do
      delete :destroy, :id => @scope_of_work
    end

    assert_redirected_to scope_of_works_path
  end
end
