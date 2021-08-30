json.extract! bookshop, :id, :book, :publisher, :name, :created_at, :updated_at
json.url bookshop_url(bookshop, format: :json)
