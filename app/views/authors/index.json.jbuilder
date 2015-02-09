json.array!(@authors) do |author|
  json.extract! author, :id, :name, :nationality, :birthday
  json.url author_url(author, format: :json)
end
