json.array!(@providers) do |provider|
  json.extract! provider, :id, :first_name, :last_name, :npi_number, :phone_number, :fax_number
  json.url provider_url(provider, format: :json)
end
