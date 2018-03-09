require 'test_helper'

class DancersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dancer = dancers(:one)
  end

  test "should get index" do
    get dancers_url
    assert_response :success
  end

  test "should get new" do
    get new_dancer_url
    assert_response :success
  end

  test "should create dancer" do
    assert_difference('Dancer.count') do
      post dancers_url, params: { dancer: { name: @dancer.name } }
    end

    assert_redirected_to dancer_url(Dancer.last)
  end

  test "should show dancer" do
    get dancer_url(@dancer)
    assert_response :success
  end

  test "should get edit" do
    get edit_dancer_url(@dancer)
    assert_response :success
  end

  test "should update dancer" do
    patch dancer_url(@dancer), params: { dancer: { name: @dancer.name } }
    assert_redirected_to dancer_url(@dancer)
  end

  test "should destroy dancer" do
    assert_difference('Dancer.count', -1) do
      delete dancer_url(@dancer)
    end

    assert_redirected_to dancers_url
  end
end
