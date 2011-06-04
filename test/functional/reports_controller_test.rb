require 'test_helper'

class ReportsControllerTest < ActionController::TestCase
  setup do
    @report = reports(:one)
    @member = members(:one)
    @event = events(:one)
  end

  test "should get index" do
    get :index, :member_id => @member.id
    assert_response :success
    assert_not_nil assigns(:reports)
#    assert_equal @member.id, assigns(:member).id
  end

  test "should get new" do
    get :new, :event_id => @event.id
    assert_response :success
    assert_equal @event.id, assigns(:event).id
  end

  test "should create report" do
    report_count = Report.count
    post :create, :report => @report.attributes, :event_id => @event.id

    assert_equal report_count + 1, Report.count
    assert_equal @event.id, assigns(:report).event_id
    assert_redirected_to event_path(@event)
  end

  test "should get edit" do
    get :edit, id: @report.to_param, :event_id => @event.id
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
