require 'spec_helper'

feature 'Api tokens' do

  it "creating a new token" do
  	visit "/api"
  	click_button "Generate"
  	click_button "Use"
  	ApiToken.count.should change_by(1)
  end

end