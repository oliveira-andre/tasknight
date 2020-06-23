# frozen_string_literal: true

class Character < ApplicationRecord
  belongs_to :character_class
  belongs_to :character_attribute
end
