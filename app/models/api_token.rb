class ApiToken < ActiveRecord::Base
  attr_accessible :api_key
  validates_uniqueness_of :api_key
end
