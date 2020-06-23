# frozen_string_literal: true

json.extract! task, :id, :name, :description, :opponent_id, :finished, :winner_id, :character_id, :created_at, :updated_at
json.url task_url(task, format: :json)
