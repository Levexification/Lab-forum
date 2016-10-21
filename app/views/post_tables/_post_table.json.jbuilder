json.extract! post_table, :id, :title, :content, :created_at, :updated_at
json.url post_table_url(post_table, format: :json)