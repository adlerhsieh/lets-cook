require 'rails_helper'

describe Event, :type => :model do
	it "has_many event members" do
		relation = Event.reflect_on_association(:event_members)
		expect(relation.macro).to eq(:has_many)
	end

	it "has_many event users" do
		relation = Event.reflect_on_association(:event_users)
		expect(relation.macro).to eq(:has_many)
	end

	it "has_many dishes" do
		relation = Event.reflect_on_association(:dishes)
		expect(relation.macro).to eq(:has_many)
	end
end