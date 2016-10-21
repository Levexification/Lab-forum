require 'test_helper'

class UserTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_table = user_tables(:one)
  end

  test "should get index" do
    get user_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_user_table_url
    assert_response :success
  end

  test "should create user_table" do
    assert_difference('UserTable.count') do
      post user_tables_url, params: { user_table: { user_mail: @user_table.user_mail, user_name: @user_table.user_name, user_pass: @user_table.user_pass } }
    end

    assert_redirected_to user_table_url(UserTable.last)
  end

  test "should show user_table" do
    get user_table_url(@user_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_table_url(@user_table)
    assert_response :success
  end

  test "should update user_table" do
    patch user_table_url(@user_table), params: { user_table: { user_mail: @user_table.user_mail, user_name: @user_table.user_name, user_pass: @user_table.user_pass } }
    assert_redirected_to user_table_url(@user_table)
  end

  test "should destroy user_table" do
    assert_difference('UserTable.count', -1) do
      delete user_table_url(@user_table)
    end

    assert_redirected_to user_tables_url
  end
end
