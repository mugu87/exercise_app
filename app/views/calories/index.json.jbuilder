json.array!(@calories) do |calory|
  json.extract! calory, :calorie_in, :calorie_out, :weight, :height
  json.url calory_url(calory, format: :json)
end
