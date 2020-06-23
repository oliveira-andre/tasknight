# frozen_string_literal: true

json.extract! character, :id, :name, :level, :hp, :mp, :gold, :character_class, :created_at, :updated_at
json.url character_url(character, format: :json)
