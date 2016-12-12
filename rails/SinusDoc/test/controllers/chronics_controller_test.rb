require 'test_helper'

class ChronicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chronic = chronics(:one)
  end

  test "should get index" do
    get chronics_url
    assert_response :success
  end

  test "should get new" do
    get new_chronic_url
    assert_response :success
  end

  test "should create chronic" do
    assert_difference('Chronic.count') do
      post chronics_url, params: { chronic: { date_created: @chronic.date_created, discomfort_score: @chronic.discomfort_score, patient_id: @chronic.patient_id } }
    end

    assert_redirected_to chronic_url(Chronic.last)
  end

  test "should show chronic" do
    get chronic_url(@chronic)
    assert_response :success
  end

  test "should get edit" do
    get edit_chronic_url(@chronic)
    assert_response :success
  end

  test "should update chronic" do
    patch chronic_url(@chronic), params: { chronic: { date_created: @chronic.date_created, discomfort_score: @chronic.discomfort_score, patient_id: @chronic.patient_id } }
    assert_redirected_to chronic_url(@chronic)
  end

  test "should destroy chronic" do
    assert_difference('Chronic.count', -1) do
      delete chronic_url(@chronic)
    end

    assert_redirected_to chronics_url
  end
end
