json.array! @news do |news|
  json.id news.id
  json.headline news.headline
  json.announcement news.announcement
  json.text news.text
  json.user do
    json.id news.user.id
    json.full_name news.user.full_name
  end
end

