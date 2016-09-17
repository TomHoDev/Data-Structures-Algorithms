class FixedArray
attr_accessor :array

  def initialize(size)
    @array = Array.new(size)
  end

  def get(index)
    if out_of_bounds?(index)
      raise IndexOutOfBoundsError
    end 
    @array[index]
  end

  def set(index, value)
    if out_of_bounds?(index)
      raise IndexOutOfBoundsError
    end 
    @array[index] = value
  end

  private 
    def out_of_bounds?(index)
      if index >= @array.length || index < 0
        return true
      end
      false 
    end
end

class IndexOutOfBoundsError < StandardError
end