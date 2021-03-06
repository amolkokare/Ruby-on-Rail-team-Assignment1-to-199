json.extract! product, :id, :order, :quantity, :item, :description, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
