json.array!(@emails) do |email|
  json.extract! email, :id, :from, :subject, :message
  json.url email_url(email, format: :json)
end
