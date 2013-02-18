require 'spec_helper'

describe ConfessionsController do

	context "create" do

		it "POST 'create' confession" do
	  	Confession.should_receive(:create).with({"body" => 'something'})
	  	post 'create', :confession => {"body" => "something"}
	  end

	  it "saves the confession" do
	  	post 'create', :confession => {"body" => "something"}
	  	Confession.count.should == 1
	  	Confession.first.body.should == "something"
	  end

	end

	context "retrieve" do

		before(:each) do
			3.times do |num| 
				Confession.create(body: "message#{num}")
			end
		end

		it "GET 'index' of confessions" do
	  	get 'index'
	  	assigns(:confessions).size.should == 3
	  	assigns(:confessions).first.body.should == "message0"
	  end

	end

end