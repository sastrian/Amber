json.array!(@ideas_in_projects) do |ideas_in_project|
  json.extract! ideas_in_project, :id, :project_id, :idea_id
  json.url ideas_in_project_url(ideas_in_project, format: :json)
end
