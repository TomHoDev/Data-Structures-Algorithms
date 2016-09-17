class FixedArray
attr_accessor :array

  def initialize(size)
    @array = Array.new(size)
  end

  def get(index)
    if index >= @array.length || index < 0
      raise IndexOutOfBoundsError
    end 
    @array[index]
  end
end

class IndexOutOfBoundsError < StandardError
end