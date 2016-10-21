require 'test_helper'

class PostTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_table = post_tables(:one)
  end

  test "should get index" do
    get post_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_post_table_url
    assert_response :success
  end

  test "should create post_table" do
    assert_difference('PostTable.count') do
      post post_tables_url, params: { post_table: { content: @post_table.content, title: @post_table.title } }
    end

    assert_redirected_to post_table_url(PostTable.last)
  end

  test "should show post_table" do
    get post_table_url(@post_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_table_url(@post_table)
    assert_response :success
  end

  test "should update post_table" do
    patch post_table_url(@post_table), params: { post_table: { content: @post_table.content, title: @post_table.title } }
    assert_redirected_to post_table_url(@post_table)
  end

  test "should destroy post_table" do
    assert_difference('PostTable.count', -1) do
      delete post_table_url(@post_table)
    end

    assert_redirected_to post_tables_url
  end
end
