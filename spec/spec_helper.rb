require 'rspec'
require 'factory_bot'

require 'tableasy'
require 'tableasy/tables_helper'
require 'action_view'

RSpec.configure do |config|

  config.include FactoryBot::Syntax::Methods

  config.before(:suite) do
    FactoryBot.find_definitions
  end

end

class HelperObject
  include ActionView::Helpers
  include Tableasy::TablesHelper
  attr_accessor :output_buffer
end

def helper
  @helper ||= HelperObject.new
end
