json.array!(@g_posts) do |g_post|
  json.extract! g_post, :id, :lat, :lon, :image, :user_id, :user_name, :park, :ip_address
  json.url g_post_url(g_post, format: :json)
end
