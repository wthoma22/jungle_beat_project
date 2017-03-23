require "./lib/node"
require 'pry'

class LinkedList

  attr_accessor :head, :data

  def initialize (head = nil)
    @head = head
    @count = 0
  end

  def append(beat)
    if @head = nil?
       @head = Node.new(beat)
    else

      current_node = @head

      until current_node.next_node == nil
        current_node = current_node.next_node
      end

      current_node.next_node = Node.new(beat)
    end
  end

  def count
    node_count = 0
    if @head != nil
      node_count += 1
    end
    node_count
  end

  def to_string
    @head.data
  end

  def prepend(data)
    forced_node = @head != nil ? 
    switch_head(data) : assign_head(data)
    success(added_node)
  end
  

end