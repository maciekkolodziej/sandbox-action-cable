json.extract! task, :id, :name, :deadline, :done, :created_at, :updated_at
json.url task_url(task, format: :json)
