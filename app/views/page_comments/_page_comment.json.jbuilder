json.extract! page_comment, :id, :name, :email, :phone_no, :message, :created_at, :updated_at
json.url page_comment_url(page_comment, format: :json)
