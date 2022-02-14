require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_index_url
    assert_response :success
  end

  test "should get leer" do
    get users_leer_url
    assert_response :success
  end

  test "should get crear" do
    get users_crear_url
    assert_response :success
  end

  test "should get actualizar" do
    get users_actualizar_url
    assert_response :success
  end
end
