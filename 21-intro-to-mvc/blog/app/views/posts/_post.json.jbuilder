json.extract! post, :id, :title, :content, :year, :created_at, :updated_at
json.url post_url(post, format: :json)
