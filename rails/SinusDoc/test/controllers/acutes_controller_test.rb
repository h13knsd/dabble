require 'test_helper'

class AcutesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acute = acutes(:one)
  end

  test "should get index" do
    get acutes_url
    assert_response :success
  end

  test "should get new" do
    get new_acute_url
    assert_response :success
  end

  test "should create acute" do
    assert_difference('Acute.count') do
      post acutes_url, params: { acute: { answer: @acute.answer, date_created: @acute.date_created, patient_id: @acute.patient_id } }
    end

    assert_redirected_to acute_url(Acute.last)
  end

  test "should show acute" do
    get acute_url(@acute)
    assert_response :success
  end

  test "should get edit" do
    get edit_acute_url(@acute)
    assert_response :success
  end

  test "should update acute" do
    patch acute_url(@acute), params: { acute: { answer: @acute.answer, date_created: @acute.date_created, patient_id: @acute.patient_id } }
    assert_redirected_to acute_url(@acute)
  end

  test "should destroy acute" do
    assert_difference('Acute.count', -1) do
      delete acute_url(@acute)
    end

    assert_redirected_to acutes_url
  end
end
