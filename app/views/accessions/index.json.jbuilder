json.array!(@accessions) do |accession|
  json.extract! accession, :id, :accession_number, :collection_date, :date_received
  json.url accession_url(accession, format: :json)
end
