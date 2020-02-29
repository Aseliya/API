json.array! @users do |user|
  json.id user.id
  json.full_name user.full_name
  json.login user.login
  json.signature user.signature
end
