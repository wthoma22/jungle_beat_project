gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node.rb'
require 'pry'

class NodeTest < Minitest::Test

  def test_node_exist
    node = Node.new('plop')
    assert node
 end

  def test_value_works
    node = Node.new('plop')
    assert_equal 'plop', node.data
 end

 def test_next_node
   node = Node.new(nil)
   assert_equal nil, node.next_node
 end
end



