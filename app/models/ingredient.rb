class Ingredient < ActiveRecord::Base
  belongs_to :dish, dependent: :destroy
  has_many :prepare_lists
  has_many :preparer, through: :prepare_lists, source: :user
end
