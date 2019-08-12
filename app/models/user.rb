class User < ApplicationRecord
  has_many :attendances
  has_many :events, through: :attendances
  has_many :event_admin, foreign_key: "administrator_id", class_name: "Event"
end
