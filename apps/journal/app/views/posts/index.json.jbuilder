json.array!(@posts) do |post|
  json.extract! post, :id, :kid, :author, :subject, :body, :date
  json.url post_url(post, format: :json)
end
