json.array!(@stores) do |store|
  json.extract! store, :id, :name, :email, :open, :image, :photos, :tags, :description, :lat, :lng, :votes, :props
  json.url store_url(store, format: :json)
end
