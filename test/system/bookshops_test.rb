require "application_system_test_case"

class BookshopsTest < ApplicationSystemTestCase
  setup do
    @bookshop = bookshops(:one)
  end

  test "visiting the index" do
    visit bookshops_url
    assert_selector "h1", text: "Bookshops"
  end

  test "creating a Bookshop" do
    visit bookshops_url
    click_on "New Bookshop"

    fill_in "Book", with: @bookshop.book
    fill_in "Name", with: @bookshop.name
    fill_in "Publisher", with: @bookshop.publisher
    click_on "Create Bookshop"

    assert_text "Bookshop was successfully created"
    click_on "Back"
  end

  test "updating a Bookshop" do
    visit bookshops_url
    click_on "Edit", match: :first

    fill_in "Book", with: @bookshop.book
    fill_in "Name", with: @bookshop.name
    fill_in "Publisher", with: @bookshop.publisher
    click_on "Update Bookshop"

    assert_text "Bookshop was successfully updated"
    click_on "Back"
  end

  test "destroying a Bookshop" do
    visit bookshops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bookshop was successfully destroyed"
  end
end
