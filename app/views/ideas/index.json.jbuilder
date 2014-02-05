json.array!(@ideas) do |idea|
  json.extract! idea, :id, :name, :image, :description, :user_id, :topic_id
  json.url idea_url(idea, format: :json)
end
