json.extract! post, :id, :stuff_name, :description, :comment, :user_id, :success, :created_at, :updated_at
json.url post_url(post, format: :json)
