class Event < ActiveRecord::Base
  has_many :event_entries
end
