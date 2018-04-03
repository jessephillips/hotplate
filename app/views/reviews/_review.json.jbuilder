json.extract! review, :id, :meal_id, :description, :rating, :created_at, :updated_at
json.url review_url(review, format: :json)
