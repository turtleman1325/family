json.array!(@contacts) do |contact|
  json.extract! contact, :id, :full_name, :company, :phone, :email
  json.url contact_url(contact, format: :json)
end
