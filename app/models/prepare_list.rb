class PrepareList < ActiveRecord::Base
	belongs_to :event, dependent: :destroy
	belongs_to :user, dependent: :destroy
	belongs_to :ingredient, dependent: :destroy
end
