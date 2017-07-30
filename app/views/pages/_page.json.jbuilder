json.extract! page, :id, :title, :content, :creator_id, :is_public, :reviewed_on, :topic_id, :created_at, :updated_at
json.url page_url(page, format: :json)
