class Event < ActiveRecord::Base
  has_many :event_users, dependent: :destroy
  has_many :event_members, through: :event_users, source: :user
  has_many :dishes, dependent: :destroy

  validates_presence_of :hold_place, :hold_time, :add_dish_dealine, :admin_id
end
