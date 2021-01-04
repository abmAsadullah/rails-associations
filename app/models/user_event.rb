class UserEvent < ApplicationRecord
  belongs_to :event_attender
  belongs_to :attended_event
end
