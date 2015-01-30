class EventUser < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  belongs_to :evnet, dependent: :destroy
end
