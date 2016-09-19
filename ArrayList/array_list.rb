require_relative '../FixedArray/fixed_array'

class ArrayList
  attr_accessor :array 

  def initialize(size)
    @array = FixedArray.new(size).array
  end

end