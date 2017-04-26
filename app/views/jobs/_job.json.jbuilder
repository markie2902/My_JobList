json.extract! job, :id, :title, :company, :location, :date_applied, :date_replied, :status, :url, :created_at, :updated_at
json.url job_url(job, format: :json)
