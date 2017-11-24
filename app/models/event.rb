class Event < ApplicationRecord
  default_scope -> { order(date: :asc) }
  belongs_to :creator, foreign_key: 'user_id', class_name: 'User'
  has_many :event_attendees
  has_many :attendees, through: :event_attendees, source: :attendee

  scope :past, lambda { where('date < ?', Date.today) }
  scope :upcoming, lambda { where('date >= ?', Date.today) }
end
