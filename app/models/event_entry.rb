class EventEntry < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  validates :user_id, uniqueness: { scope: :event_id, message: "You can only register to event once"}
end
