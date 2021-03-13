require "test_helper"

class Employee1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee1 = employee1s(:one)
  end

  test "should get index" do
    get employee1s_url
    assert_response :success
  end

  test "should get new" do
    get new_employee1_url
    assert_response :success
  end

  test "should create employee1" do
    assert_difference('Employee1.count') do
      post employee1s_url, params: { employee1: { address: @employee1.address, first_name: @employee1.first_name, last_name: @employee1.last_name, phone_number: @employee1.phone_number } }
    end

    assert_redirected_to employee1_url(Employee1.last)
  end

  test "should show employee1" do
    get employee1_url(@employee1)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee1_url(@employee1)
    assert_response :success
  end

  test "should update employee1" do
    patch employee1_url(@employee1), params: { employee1: { address: @employee1.address, first_name: @employee1.first_name, last_name: @employee1.last_name, phone_number: @employee1.phone_number } }
    assert_redirected_to employee1_url(@employee1)
  end

  test "should destroy employee1" do
    assert_difference('Employee1.count', -1) do
      delete employee1_url(@employee1)
    end

    assert_redirected_to employee1s_url
  end
end
