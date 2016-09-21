class Event < ApplicationRecord
  validates :summary, :start_at, :end_at, :title, presence: true
end
