# #All
require 'rspec'
require 'net/http'
require 'json'
require 'factory_bot'
require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = 'spec/cassettes'
  c.hook_into :webmock
  c.configure_rspec_metadata!
end

$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../lib')
require 'gisbn'

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  config.before(:suite) do
    FactoryBot.find_definitions
  end
end
