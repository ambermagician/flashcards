json.extract! flash_card, :id, :word, :definition, :created_at, :updated_at
json.url flash_card_url(flash_card, format: :json)
