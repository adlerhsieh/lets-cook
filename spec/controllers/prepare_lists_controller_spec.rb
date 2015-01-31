require 'rails_helper'

RSpec.describe PrepareListsController, :type => :controller do
	it "get_list" do
		get :user_prepared_list, :id => 1
		expect(response.status).to eq(200)
	end
end
