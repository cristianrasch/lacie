require File.expand_path("lacie")
require "minitest/autorun"
require "rack/test"

class LacieTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Lacie
  end

  #def test_my_default
  #  get '/'
  #  assert_equal 'Hello World!', last_response.body
  #end
end