require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = books(:one)
  end

  test "visiting the index" do
    visit books_url
    assert_selector "h1", text: "Books"
  end

  test "creating a Book" do
    visit books_url
    click_on "New Book"

<<<<<<< HEAD:Rakhi/Assignment2-foreignkey/test/system/books_test.rb
    fill_in "Published year", with: @book.Published_year
    fill_in "Title", with: @book.Title
=======
    fill_in "Published year", with: @book.published_year
    fill_in "Title", with: @book.title
>>>>>>> e119317a0f623e0eae36b8312c36026beb434c37:Nirmala/assignment2/test/system/books_test.rb
    click_on "Create Book"

    assert_text "Book was successfully created"
    click_on "Back"
  end

  test "updating a Book" do
    visit books_url
    click_on "Edit", match: :first

<<<<<<< HEAD:Rakhi/Assignment2-foreignkey/test/system/books_test.rb
    fill_in "Published year", with: @book.Published_year
    fill_in "Title", with: @book.Title
=======
    fill_in "Published year", with: @book.published_year
    fill_in "Title", with: @book.title
>>>>>>> e119317a0f623e0eae36b8312c36026beb434c37:Nirmala/assignment2/test/system/books_test.rb
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "destroying a Book" do
    visit books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Book was successfully destroyed"
  end
end
