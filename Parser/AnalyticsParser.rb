require 'json'

class AnalyticsParser
  attr_accessor :fileHandler

  def initialize
    @testClassName = nil
    @testName = nil
    @testResult = nil
    @testFailureDiscription = nil
    @testContainer = {} #Build and a list of TestClassName, TestName, Result, and Failure Reason
    @fileHandler = FileHandler.new
  end

  def parse
    #TODO: load all files and collect data
    json_files = @fileHandler.load_json_files
    @fileHandler.load_json_content json_files

  end
end

class FileHandler
  def initialize
    @fileName = nil
    @listOfFile = []
  end

  def create_list_of_json_files (path)
    #TODO: create a list with absolute paths of a JSON files
    puts 'hey!'
  end

  def load_json_files
    #TODO go to directory
    #TODO open one file at a time
    return file
  end

  def load_json_content (file)
    #TODO read all of the file and return it to the parser
  end
end
