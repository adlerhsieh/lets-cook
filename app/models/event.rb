class Event < ActiveRecord::Base
  has_many :evnet_users
  has_many :event_member, through: :evnet_users, source: :user
  has_many :dishes
end
