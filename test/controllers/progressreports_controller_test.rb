require 'test_helper'

class ProgressreportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @progressreport = progressreports(:one)
  end

  test "should get index" do
    get progressreports_url, as: :json
    assert_response :success
  end

  test "should create progressreport" do
    assert_difference('Progressreport.count') do
      post progressreports_url, params: { progressreport: { date: @progressreport.date, time_earned: @progressreport.time_earned } }, as: :json
    end

    assert_response 201
  end

  test "should show progressreport" do
    get progressreport_url(@progressreport), as: :json
    assert_response :success
  end

  test "should update progressreport" do
    patch progressreport_url(@progressreport), params: { progressreport: { date: @progressreport.date, time_earned: @progressreport.time_earned } }, as: :json
    assert_response 200
  end

  test "should destroy progressreport" do
    assert_difference('Progressreport.count', -1) do
      delete progressreport_url(@progressreport), as: :json
    end

    assert_response 204
  end
end
