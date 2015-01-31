require 'rails_helper'

describe Dish, :type => :model do
	it "has_many ingredients" do
		relation = Dish.reflect_on_association(:ingredients)
		expect(relation.macro).to eq(:has_many)
	end

	it "belongs_to user" do
		relation = Dish.reflect_on_association(:user)
		expect(relation.macro).to eq(:belongs_to)
	end

	it "belongs_to event" do
		relation = Dish.reflect_on_association(:event)
		expect(relation.macro).to eq(:belongs_to)
	end
end