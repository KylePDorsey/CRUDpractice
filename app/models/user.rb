class User < ActiveRecord::Base
  has_many :engagements, {foreign_key: :attendee_id}
  has_many :events, {through: :engagements}
  has_many :created_events, {class_name: "Event", foreign_key: :creator_id}
  # Remember to create a migration!
end
