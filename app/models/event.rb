class Event < ActiveRecord::Base
  has_many :event_users
  has_many :event_members, through: :evnet_users, source: :user
  has_many :dishes
end
