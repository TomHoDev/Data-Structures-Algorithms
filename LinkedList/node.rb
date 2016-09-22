class Node
  attr_reader :element
  attr_accessor :next 
  
  def initialize(element) 
    @element = element
  end

  def insert_after(node)
    @next = node
  end
end