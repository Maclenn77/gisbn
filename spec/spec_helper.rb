# #All
require 'rspec'
require_relative 'vcr/vcr_setup'
require 'net/http'
require 'json'
require 'factory_bot'

$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../lib')
require 'gisbn'

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  config.before(:suite) do
    FactoryBot.find_definitions
  end
end
