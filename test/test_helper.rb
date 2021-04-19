require 'rubygems'
require 'factory_girl'
require 'bundler/setup'

require 'coveralls'
require 'minitest/autorun'

Coveralls.wear!
FactoryGirl.reload

class ActiveSupport::TestCase
  include FactoryBot::Syntax::Methods
end
