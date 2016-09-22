require_relative 'node.rb'

class LinkedList
  attr_accessor :start
  def initialize(node = Node.new(0))
    @start = node
  end

  def list(node = @start, str = '')
    
    if node.next != nil
      return  list(node.next, str << "#{node.element}, ")
    else
      return str << "#{node.element}"
    end

  end

end