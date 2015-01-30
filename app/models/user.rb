class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :evnet_users
  has_many :participated_groups, through: :evnet_users, source: :event
  has_many :prepare_lists
  has_many :prepared_ingredients, through: :prepare_lists, source: :ingredient
  has_many :dishes
end
