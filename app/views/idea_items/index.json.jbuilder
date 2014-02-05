json.array!(@idea_items) do |idea_item|
  json.extract! idea_item, :id, :rank, :idea_id, :title
  json.url idea_item_url(idea_item, format: :json)
end
