json.extract! post, :id, :title, :content, :created_by, :created_at, :updated_at
json.url post_url(post, format: :json)
