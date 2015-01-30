class Dish < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  belongs_to :event, dependent: :destroy
  has_many :ingredients
end
