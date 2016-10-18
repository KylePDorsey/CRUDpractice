class Event < ActiveRecord::Base
  has_many :engagements
  belongs_to :creator, {class_name: "User" , foreign_key: :creator_id}
  has_many :attendees, {through: :engagements, source: :attendee}
  # Remember to create a migration!
end
