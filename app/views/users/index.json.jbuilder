json.array!(@users) do |user|
  json.extract! user, :email, :password, :login
  json.url user_url(user, format: :json)
end
