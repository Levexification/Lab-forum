json.extract! user_table, :id, :user_name, :user_pass, :user_mail, :created_at, :updated_at
json.url user_table_url(user_table, format: :json)