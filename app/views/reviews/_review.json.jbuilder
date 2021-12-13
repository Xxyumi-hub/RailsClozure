json.extract! review, :id, :content, :name, :store_id, :created_at, :updated_at
json.url review_url(review, format: :json)
