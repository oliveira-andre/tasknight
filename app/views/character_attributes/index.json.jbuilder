# frozen_string_literal: true

json.array! @character_attributes, partial: 'character_attributes/character_attribute', as: :character_attribute
