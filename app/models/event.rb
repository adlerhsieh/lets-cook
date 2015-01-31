class Event < ActiveRecord::Base
  has_many :event_users, dependent: :destroy
  has_many :event_members, through: :evnet_users, source: :user
  has_many :dishes, dependent: :destroy
end
