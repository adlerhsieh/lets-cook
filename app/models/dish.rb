class Dish < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  has_many :ingredients, dependent: :destroy
end
