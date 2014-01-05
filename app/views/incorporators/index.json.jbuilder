json.array!(@incorporators) do |incorporator|
  json.extract! incorporator, :id, :name, :address_line_1, :address_line_2, :city, :state, :postal_code, :country
  json.url incorporator_url(incorporator, format: :json)
end
