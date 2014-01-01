require 'test/unit'
require '../src/analyticsparser'

class FileHandlerTest < Test::Unit::TestCase

  def setup
    @CUT = FileHandler.new
  end

  def teardown
    @CUT = nil
  end

  # Fake test
  def testCreation
      puts 'yeah'
      @CUT.create_list_of_json_files 'Hello'
      assert_not_nil(@CUT, 'Not nil!')
  end
end