require 'test/unit'
require '../Parser/AnalyticsParser'

class AnalyticsParserTest < Test::Unit::TestCase

  def setup
    @CUT = AnalyticsParser.new
  end

  def teardown
    @CUT = nil
  end

  # Fake test
  def TestCreation
    @CUT.fileHandler.create_list_of_json_files 'Hello'
    assert_not_nil(@CUT.fileHandler)
    puts 'got it!'
  end

  def TestCreation2
    puts 'got it! again!'
    puts 'got it! one more time!'
    puts 'final got it! promise last time!'
  end
end