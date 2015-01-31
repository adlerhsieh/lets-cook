require 'rails_helper'

RSpec.describe PrepareListsController, :type => :controller do
	# let(:current_user) {User.create!(:email =>"aaannn@gmail.com", :password => "1234567778", id: 1122334455)}
	# let(:current_user) { User.first }

	it "get_list" do
		get :user_prepared_list, :id => 1
		expect(response.status).to eq(200)
	end

	# it "creates" do
		# post :create, :current_user => {:id => 200}, :prepare_lists => {:ingredient_id => 1}
		# expect(response.status).to eq(200)
	# end
end
