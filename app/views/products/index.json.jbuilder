json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :category, :quantity, :cost, :image
  json.url product_url(product, format: :json)
end
