class Event < ApplicationRecord
  validates :summary, :start_at, :end_at, presence: true
end
