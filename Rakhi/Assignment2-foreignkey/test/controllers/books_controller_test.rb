require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
<<<<<<< HEAD:Rakhi/Assignment2-foreignkey/test/controllers/books_controller_test.rb
      post books_url, params: { book: { Published_year: @book.Published_year, Title: @book.Title } }
=======
      post books_url, params: { book: { published_year: @book.published_year, title: @book.title } }
>>>>>>> e119317a0f623e0eae36b8312c36026beb434c37:Nirmala/assignment2/test/controllers/books_controller_test.rb
    end

    assert_redirected_to book_url(Book.last)
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success
  end

  test "should update book" do
<<<<<<< HEAD:Rakhi/Assignment2-foreignkey/test/controllers/books_controller_test.rb
    patch book_url(@book), params: { book: { Published_year: @book.Published_year, Title: @book.Title } }
=======
    patch book_url(@book), params: { book: { published_year: @book.published_year, title: @book.title } }
>>>>>>> e119317a0f623e0eae36b8312c36026beb434c37:Nirmala/assignment2/test/controllers/books_controller_test.rb
    assert_redirected_to book_url(@book)
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete book_url(@book)
    end

    assert_redirected_to books_url
  end
end
