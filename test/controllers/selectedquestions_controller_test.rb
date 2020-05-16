require 'test_helper'

class SelectedquestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @selectedquestion = selectedquestions(:one)
  end

  test "should get index" do
    get selectedquestions_url, as: :json
    assert_response :success
  end

  test "should create selectedquestion" do
    assert_difference('Selectedquestion.count') do
      post selectedquestions_url, params: { selectedquestion: { answered: @selectedquestion.answered, answered_c: @selectedquestion.answered_c, answered_w: @selectedquestion.answered_w } }, as: :json
    end

    assert_response 201
  end

  test "should show selectedquestion" do
    get selectedquestion_url(@selectedquestion), as: :json
    assert_response :success
  end

  test "should update selectedquestion" do
    patch selectedquestion_url(@selectedquestion), params: { selectedquestion: { answered: @selectedquestion.answered, answered_c: @selectedquestion.answered_c, answered_w: @selectedquestion.answered_w } }, as: :json
    assert_response 200
  end

  test "should destroy selectedquestion" do
    assert_difference('Selectedquestion.count', -1) do
      delete selectedquestion_url(@selectedquestion), as: :json
    end

    assert_response 204
  end
end
