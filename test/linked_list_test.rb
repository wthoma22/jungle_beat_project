gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require "./lib/linked_list"
require "./lib/node"
require 'pry'

class LinkedListTest < Minitest::Test

  def test_list_exist
    list = LinkedList.new
    assert list
  end

  def test_list_head
    list = LinkedList.new
    refute list.head 
  end

  def test_list_append_items
    list = LinkedList.new
    assert_equal 'doop', list.append('doop')
    list.append('deep')
    assert_equal 'doop deep', list.head.data + " " + list.head.next_node.data
    assert_equal 'plop', list.append('plop')
    list.append('plop')
    assert_equal 'suu', list.append('suu')
    list.append('suu')
  end

  def test_list_head_next_node
    head = Node.new('doop')
    list = LinkedList.new(head)
    assert_nil list.head.next_node
  end

  def test_list_count
    list = LinkedList.new
    assert_equal 0, list.count
    list.append('doop')
    assert_equal 1, list.count
    list.append('deep') 
    assert_equal 2, list.count
  end

  def test_list_head_with_count
  head = Node.new('doop')
  list = LinkedList.new(head)
  assert_equal 1, list.count
  end

  def test_list_string
    head = Node.new('doop')
    list = LinkedList.new(head)
    assert_equal 'doop', list.to_string
  end

  def test_prepends_data
    list = LinkedList.new
    assert_equal "plop", list.append("plop")
    assert_equal "plop", list.to_string
    list.append("suu")
    list.prepend("dop")
    assert_equal "dop plop suu", list.to_string
    assert_equal 3, list.count
  end

end
