json.array!(@projects) do |project|
  json.extract! project, :id, :title, :image, :user_id, :topic_id, :description
  json.url project_url(project, format: :json)
end
