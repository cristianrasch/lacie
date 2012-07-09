require "minitest/autorun"
require "capybara/dsl"

require File.expand_path("lacie")

class CapybaraTestCase < MiniTest::Unit::TestCase
  include Capybara::DSL
  
  def setup
    Capybara.app = Lacie.new
  end
  
  def teardown
    Capybara.reset_sessions!
  end
end