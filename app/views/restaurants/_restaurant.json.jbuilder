json.extract! restaurant, :id, :name, :address, :website, :phone, :style, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
