json.extract! activity, :id, :activity_tittle, :activity_date, :activity_time, :activity_type, :created_at, :updated_at
json.url activity_url(activity, format: :json)
