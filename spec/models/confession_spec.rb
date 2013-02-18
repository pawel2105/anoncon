require 'spec_helper'

describe Confession do
  describe "when first created" do
    it "has a body" do
    	Confession.new.should have(1).error_on(:body)
    end
  end
end