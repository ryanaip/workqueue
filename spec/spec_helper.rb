require 'rubygems'
require 'bundler'
Bundler.require

require 'workqueue'
require 'minitest/autorun'
require 'minitest/spec'

Wrong.config[:color] = true

class MiniTest::Unit::TestCase
  include Wrong
end

Dir[File.expand_path('support/**/*.rb', File.dirname(__FILE__))].each {|f|
  require f
}
