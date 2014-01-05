json.array!(@registered_agents) do |registered_agent|
  json.extract! registered_agent, :id, :name, :address_line_1, :address_line_2, :city, :state, :postal_code, :country
  json.url registered_agent_url(registered_agent, format: :json)
end
