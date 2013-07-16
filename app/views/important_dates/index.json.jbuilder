json.array!(@important_dates) do |important_date|
  json.extract! important_date, :day, :title, :description
  json.url important_date_url(important_date, format: :json)
end
