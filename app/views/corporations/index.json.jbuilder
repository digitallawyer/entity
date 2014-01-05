json.array!(@corporations) do |corporation|
  json.extract! corporation, :id, :name, :extension, :share_number, :share_value
  json.url corporation_url(corporation, format: :json)
end
