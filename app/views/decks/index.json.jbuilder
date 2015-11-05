json.array! @decks do |deck|
  json.extract! deck, :id, :title, :user_id
end