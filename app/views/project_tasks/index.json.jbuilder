json.array!(@project_tasks) do |project_task|
  json.extract! project_task, :id, :title, :state, :prio, :size, :project_id
  json.url project_task_url(project_task, format: :json)
end
