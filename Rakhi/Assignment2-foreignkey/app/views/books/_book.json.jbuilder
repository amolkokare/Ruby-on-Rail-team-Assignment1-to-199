json.extract! book, :id, :Title, :Published_year, :created_at, :updated_at
json.url book_url(book, format: :json)
