require 'rails_helper'

describe DishesController, :type => :controller do

	before do
		@count = Ingredient.count
	end

	it "creates" do
		post :create, :dish => {:name => "台式控肉", :event_id => 1, :user_id => 1, :lg_pic_link => "http://google.com.tw"}
		expect(response.status).to eq(200)
		expect(@count).to eq(Ingredient.count - 9)
	end

	it "search" do
		get :search, :dish => {:file => "肉"}
		expect(response.status).to eq(200)
	end

end