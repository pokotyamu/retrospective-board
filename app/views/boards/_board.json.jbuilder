json.extract! board, :id, :title, :event_on, :created_at, :updated_at
json.url board_url(board, format: :json)
