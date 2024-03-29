json.array!(@accounts) do |account|
  json.extract! account, :id, :name, :prefix
  json.url account_url(account, format: :json)
end
