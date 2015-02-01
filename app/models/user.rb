class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :event_users, dependent: :destroy
  has_many :participated_groups, through: :event_users, source: :event
  has_many :prepare_lists, dependent: :destroy
  has_many :prepared_ingredients, through: :prepare_lists, source: :ingredient
  has_many :dishes, dependent: :destroy
end
