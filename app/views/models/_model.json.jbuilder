json.extract! model, :id, :Comment, :content, :commenter, :post_id, :user_id, :created_at, :updated_at
json.url model_url(model, format: :json)