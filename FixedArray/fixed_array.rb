class FixedArray
attr_accessor :array

  def initialize(size)
    @array = Array.new(size)
  end

  def get(index) 
    @array[index]
  end
end