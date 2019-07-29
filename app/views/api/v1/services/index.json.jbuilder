json.services do
  json.array! @services do |service|
    json.extract! service, :id, :user_id, :title, :description, :price
  end
end
