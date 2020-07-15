json.extract! todo_category, :id, :category_id, :todo_id, :created_at, :updated_at
json.url todo_category_url(todo_category, format: :json)
