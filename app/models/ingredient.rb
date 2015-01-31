class Ingredient < ActiveRecord::Base
  belongs_to :dish
  has_many :prepare_lists, dependent: :destroy
  has_many :preparer, through: :prepare_lists, source: :user
end
