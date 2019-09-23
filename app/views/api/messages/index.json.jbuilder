json.array! @new_messages do |message|
  json.data message.created_at.strftime("%Y/%m/%d %H:%M")
  json.(message, :text, :image)
  json.user_name message.user.name
  #idもデータとして渡す
  json.id message.id
end