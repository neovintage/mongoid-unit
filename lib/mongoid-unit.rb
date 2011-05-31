$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'mongoid'
require 'test/unit'

require 'mongoid-unit/base'
require 'mongoid-unit/document'
require 'mongoid-unit/associations'

class Test::Unit::TestCase
  include Mongoid::Unit
end
