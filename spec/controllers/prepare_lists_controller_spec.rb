require 'rails_helper'

RSpec.describe PrepareListsController, :type => :controller do
	include Devise::TestHelpers
	before do
		sign_in User.first
	end

	it "get_list" do
		get :user_prepared_list, :id => 1
		expect(response.status).to eq(200)
	end

	it "creates" do
		post :create, :ingredient_ids => [1,2,3,4]
		expect(response.status).to eq(200)
	end
end
