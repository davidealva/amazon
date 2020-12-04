json.extract! event, :id, :event_name, :contact, :address, :city, :state, :zip, :phone, :event_url, :event_email, :description, :date, :time, :cost, :created_at, :updated_at
json.url event_url(event, format: :json)
