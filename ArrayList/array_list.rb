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

  def set(index, element)
    @array.set(index, element)
  end

  def length
    @array.array.length
  end

  def insert(index, element)
    if out_of_bounds?(index)
      raise IndexOutOfBoundsError
    end
    @array.array.insert(index, element)
  end

  private 
    def out_of_bounds?(index)
      if index >= @array.array.length || index < 0
        return true
      end
      false 
    end

end