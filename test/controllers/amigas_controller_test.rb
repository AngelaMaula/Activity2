require 'test_helper'

class AmigasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @amiga = amigas(:one)
  end

  test "should get index" do
    get amigas_url
    assert_response :success
  end

  test "should get new" do
    get new_amiga_url
    assert_response :success
  end

  test "should create amiga" do
    assert_difference('Amiga.count') do
      post amigas_url, params: { amiga: { address: @amiga.address, age: @amiga.age, bday: @amiga.bday, name: @amiga.name } }
    end

    assert_redirected_to amiga_url(Amiga.last)
  end

  test "should show amiga" do
    get amiga_url(@amiga)
    assert_response :success
  end

  test "should get edit" do
    get edit_amiga_url(@amiga)
    assert_response :success
  end

  test "should update amiga" do
    patch amiga_url(@amiga), params: { amiga: { address: @amiga.address, age: @amiga.age, bday: @amiga.bday, name: @amiga.name } }
    assert_redirected_to amiga_url(@amiga)
  end

  test "should destroy amiga" do
    assert_difference('Amiga.count', -1) do
      delete amiga_url(@amiga)
    end

    assert_redirected_to amigas_url
  end
end
