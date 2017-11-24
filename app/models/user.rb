class User < ApplicationRecord
  has_many :events, foreign_key: 'user_id', class_name: 'Event'
  has_many :event_attendees
  has_many :attended_events, through: :event_attendees, source: :attended_event

  def upcoming_events
    self.attended_events.where('date >= ?', Date.today)
  end

  def previous_events
    self.attended_events.where('date < ?', Date.today)
  end
end
