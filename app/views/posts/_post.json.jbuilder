json.extract! post, :id, :title, :horse_name, :post_comment, :user_id, :created_at, :updated_at
json.url post_url(post, format: :json)
