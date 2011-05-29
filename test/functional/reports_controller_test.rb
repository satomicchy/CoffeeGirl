require 'test_helper'

class ReportsControllerTest < ActionController::TestCase
  setup do
    @report = reports(:one)
    @member = members(:one)
  end

  test "should get index" do
    get :index, :member_id => @member.id
    assert_response :success
    assert_not_nil assigns(:reports)
#    assert_equal @member.id, assigns(:member).id
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create report" do
    assert_difference('Report.count') do
      post :create, report: @report.attributes
    end

    assert_redirected_to report_path(assigns(:report))
  end

  test "should get edit" do
    get :edit, id: @report.to_param
    assert_response :success
  end

  test "should update report" do
    put :update, id: @report.to_param, report: @report.attributes
    assert_redirected_to report_path(assigns(:report))
  end

  test "should destroy report" do
    assert_difference('Report.count', -1) do
      delete :destroy, id: @report.to_param
    end

    assert_redirected_to reports_path
  end
end
