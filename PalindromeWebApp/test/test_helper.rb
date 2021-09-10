ENV['RACK_ENV'] = 'test'

require_relative '../app'
require 'rack/test'
require 'nokogiri'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!


# Returns the document object
def doc(repsonse)
    Nokogiri::HTML(repsonse.body)
end