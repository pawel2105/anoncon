require 'spec_helper'

describe ApiToken do

  describe "validation" do

    it "has a body" do
    	ApiToken.create(api_key: "55tt5")
    	ApiToken.new(api_key: "55tt5").should have(1).error_on(:api_key)
    end

  end

end