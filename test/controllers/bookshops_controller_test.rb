require 'test_helper'

class BookshopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookshop = bookshops(:one)
  end

  test "should get index" do
    get bookshops_url
    assert_response :success
  end

  test "should get new" do
    get new_bookshop_url
    assert_response :success
  end

  test "should create bookshop" do
    assert_difference('Bookshop.count') do
      post bookshops_url, params: { bookshop: { book: @bookshop.book, name: @bookshop.name, publisher: @bookshop.publisher } }
    end

    assert_redirected_to bookshop_url(Bookshop.last)
  end

  test "should show bookshop" do
    get bookshop_url(@bookshop)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookshop_url(@bookshop)
    assert_response :success
  end

  test "should update bookshop" do
    patch bookshop_url(@bookshop), params: { bookshop: { book: @bookshop.book, name: @bookshop.name, publisher: @bookshop.publisher } }
    assert_redirected_to bookshop_url(@bookshop)
  end

  test "should destroy bookshop" do
    assert_difference('Bookshop.count', -1) do
      delete bookshop_url(@bookshop)
    end

    assert_redirected_to bookshops_url
  end
end
