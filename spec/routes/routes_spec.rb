require 'rails_helper'

describe "Routing", :type => :routing do
	it "routes get index" do
      expect(:get => "/").to route_to(
        :controller => "home",
        :action => "welcome"
      )
    end

    it "routes to list" do
    	expect(:get => "/prepare_lists/1/user_prepared_list").to route_to(
    		:controller => "prepare_lists",
    		:action => "user_prepared_list",
    		:id => "1"
    	)
    end
end