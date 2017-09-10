require 'test_helper'

class PageCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @page_comment = page_comments(:one)
  end

  test "should get index" do
    get page_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_page_comment_url
    assert_response :success
  end

  test "should create page_comment" do
    assert_difference('PageComment.count') do
      post page_comments_url, params: { page_comment: { email: @page_comment.email, message: @page_comment.message, name: @page_comment.name, phone_no: @page_comment.phone_no } }
    end

    assert_redirected_to page_comment_url(PageComment.last)
  end

  test "should show page_comment" do
    get page_comment_url(@page_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_page_comment_url(@page_comment)
    assert_response :success
  end

  test "should update page_comment" do
    patch page_comment_url(@page_comment), params: { page_comment: { email: @page_comment.email, message: @page_comment.message, name: @page_comment.name, phone_no: @page_comment.phone_no } }
    assert_redirected_to page_comment_url(@page_comment)
  end

  test "should destroy page_comment" do
    assert_difference('PageComment.count', -1) do
      delete page_comment_url(@page_comment)
    end

    assert_redirected_to page_comments_url
  end
end
