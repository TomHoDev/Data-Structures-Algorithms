require_relative '../FixedArray/fixed_array'

class ArrayList
  attr_accessor :array 

  def initialize(size)
    @array = FixedArray.new(size)
  end

  def add(element)
    @array.array.push(element).last
  end

  def get(index)
    @array.get(index)
  end

  def set(index, value)
    @array.set(index,value)
  end

end