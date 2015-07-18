json.array!(@patterns) do |pattern|
  json.extract! pattern, :id, :name, :manufacturer, :description, :price, :color_metal, :color_theme, :website, :address, :user_id
  json.url pattern_url(pattern, format: :json)
end
