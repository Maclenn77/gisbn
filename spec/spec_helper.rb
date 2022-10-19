##All
require 'rspec'
require 'net/http'
require 'json'

$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../lib')
require 'gisbn'

config.include FactoryBot::Syntax::Methods

  config.before(:suite) do
    FactoryBot.find_definitions
  end